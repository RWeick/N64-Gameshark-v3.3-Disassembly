TARGET := build/gameshark.bin
ELF := $(TARGET:.bin=.elf)

COMPARE ?= 1

CROSS := mips-linux-gnu-

export COMPILER_PATH := tools/gcc/
CC      := wine $(COMPILER_PATH)cc1n64.exe
CPP		:= cpp
AS      := $(CROSS)as
SNAS	:= wine $(COMPILER_PATH)asn64.exe
LD      := $(CROSS)ld
OBJCOPY := $(CROSS)objcopy
OBJDUMP := $(CROSS)objdump
STRIP   := $(CROSS)strip

UNIX2DOS := unix2dos

INC := -I include -I include/PR -I include/sys -I src
CPPFLAGS := $(INC) -D_MIPS_SZLONG=32 -D_LANGUAGE_C -nostdinc -Wall
CFLAGS := -quiet -G0 -mcpu=vr4300 -mips3 -mhard-float -meb
ASFLAGS := -G0 -EB -mtune=vr4300 -march=vr4300 -mabi=32 -O1 --no-construct-floats
SNASFLAGS := $(INC) -q G0
OPTFLAGS := -O2 -g3

# Source dirs
SRC_DIRS := $(shell find src -type d)
ASM_DIRS := $(shell find asm -type d -not -path "asm/nonmatchings*")
BIN_DIRS := $(shell find assets -type d)
# Source files
C_FILES := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))

ifeq ($(PERMUTER),1)
	C_FILES += permute.c
endif

S_FILES := $(foreach dir,$(SRC_DIRS) $(ASM_DIRS),$(wildcard $(dir)/*.s))
B_FILES := $(foreach dir,$(BIN_DIRS),$(wildcard $(dir)/*.bin))
O_FILES := $(foreach f,$(C_FILES:.c=.c.o),build/$f) \
           $(foreach f,$(S_FILES:.s=.s.o),build/$f) \
		   $(foreach f,$(B_FILES:.bin=.bin.o),build/$f)

# Create build directories
$(shell mkdir -p build $(foreach dir,$(SRC_DIRS) $(ASM_DIRS),build/$(dir)))

.PHONY: all clean distclean setup

all: $(TARGET)
ifeq ($(COMPARE),1)
	@sha1sum $(TARGET)
	@sha1sum -c gameshark.sha1
endif

clean:
	$(RM) -r build
	$(MAKE) -C tools clean

distclean: clean
	$(RM) -r expected
	$(MAKE) -C tools distclean

setup:
	$(MAKE) -C tools
	$(MAKE) all COMPARE=1
ifeq (,$(wildcard gameshark.bin))
	cp $(TARGET) gameshark.bin
endif
	mkdir -p expected && cp -r build expected/build

$(TARGET): $(ELF)
	$(OBJCOPY) -O binary $< $(@:.bin=.tmp)
	dd if=$(@:.bin=.tmp) of=$@ bs=16K conv=sync status=none
	@$(RM) $(@:.bin=.tmp)

$(ELF): $(O_FILES) gameshark.ld
	$(LD) -T gameshark.ld --accept-unknown-input-arch -T undefined_syms.txt -o $@ -Map $(@:.elf=.map)

build/assets:
	mkdir $@

build/assets/%.bin.o: assets/%.bin | build/assets
	$(OBJCOPY) -I binary -O elf32-big $< $@

build/asm/%.s.o: asm/%.s
	$(AS) $(ASFLAGS) -I include $< -o $@

build/src/%.s.o: src/%.s
	$(CC) -x assembler-with-cpp $(ASFLAGS) -c $< -o $@
	@$(STRIP) -N dummy_symbol_ $@
	@$(OBJDUMP) -drz $@ > $(@:.o=.s)

build/src/%.c.o: build/src/%.c.obj
	tools/psyq-obj-parser $< -o $@ -b -n > /dev/null
	@$(STRIP) -N dummy_symbol_ $@
	@$(OBJDUMP) -drz $@ > $(@:.o=.s)

build/src/%.c.obj: src/%.c
	$(UNIX2DOS) $<
	$(CPP) $(CPPFLAGS) $< -o $@.i
	$(CC) $(CFLAGS) $(OPTFLAGS) $@.i -o $@.s
	$(SNAS) $(SNASFLAGS) $@.s -o $@

build/permute.c.o: build/permute.c.obj
	tools/psyq-obj-parser $< -o $@ -b -n > /dev/null
	@$(STRIP) -N dummy_symbol_ $@
	@$(OBJDUMP) -drz $@ > $(@:.o=.s)

build/permute.c.obj: permute.c
	$(UNIX2DOS) $<
	$(CPP) $(CPPFLAGS) $< -o $@.i
	$(CC) $(CFLAGS) $(OPTFLAGS) $@.i -o $@.s
	$(SNAS) $(SNASFLAGS) $@.s -o $@
