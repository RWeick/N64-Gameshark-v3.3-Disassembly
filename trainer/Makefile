COMPARE ?= 1

VERSION ?= us

ifeq ($(VERSION),us)
VERSION_DEFINE := VERSION_US
else
VERSION_DEFINE := VERSION_EU
endif

NAME := trainer

TARGET := build/$(VERSION)/$(NAME).bin

ELF := $(TARGET:.bin=.elf)

CROSS := mips-linux-gnu-

export COMPILER_PATH := ../tools/gcc/
CC      := wine $(COMPILER_PATH)cc1n64.exe
CPP		:= cpp
AS      := $(CROSS)as
SNAS	:= wine $(COMPILER_PATH)asn64.exe
LD      := $(CROSS)ld
OBJCOPY := $(CROSS)objcopy
OBJDUMP := $(CROSS)objdump
STRIP   := $(CROSS)strip

UNIX2DOS := unix2dos

INC := -I ../include -I ../include/PR -I ../include/sys -I src
CPPFLAGS := $(INC) -D_MIPS_SZLONG=32 -D_LANGUAGE_C -nostdinc -Wall -D$(VERSION_DEFINE) -DVERSION=$(VERSION)
CFLAGS := -quiet -G0 -mcpu=vr4300 -mips3 -mhard-float -meb
ASFLAGS := $(INC) -G0 -EB -mtune=vr4300 -march=vr4300 -mabi=32 -O1 --no-construct-floats
SNASFLAGS := $(INC) -q G0
OPTFLAGS := -O2 -g3

# Source dirs
SRC_DIRS := $(shell find src -type d)
ASM_DIRS := $(shell find asm/$(VERSION) -type d -not -path "asm/*/nonmatchings*")
BIN_DIRS := $(shell find assets/$(VERSION) -type d)
# Source files
C_FILES := $(foreach dir,$(SRC_DIRS),$(wildcard $(dir)/*.c))

ifeq ($(PERMUTER),1)
	C_FILES += permute.c
endif

S_FILES := $(foreach dir,$(SRC_DIRS) $(ASM_DIRS),$(wildcard $(dir)/*.s))
B_FILES := $(foreach dir,$(BIN_DIRS),$(wildcard $(dir)/*.bin))
O_FILES := $(foreach f,$(C_FILES:.c=.c.o),build/$(VERSION)/$f) \
           $(foreach f, $(S_FILES:.s=.s.o),build/$(VERSION)/$f) \
		   $(foreach f,$(B_FILES:.bin=.bin.o),build/$(VERSION)/$f)

# Create build directories
$(shell mkdir -p build build/$(VERSION) $(foreach dir,$(SRC_DIRS) $(ASM_DIRS),build/$(VERSION)/$(dir)))

.PHONY: all clean distclean setup

all: $(TARGET)
ifeq ($(COMPARE),1)
	@sha1sum $(TARGET)
	@sha1sum -c $(NAME).$(VERSION).sha1
endif

clean:
	$(RM) -r build

distclean: clean
	$(RM) -r expected
	$(MAKE) -C tools distclean

setup:
	$(MAKE) -C tools
	$(MAKE) all COMPARE=1
ifeq (,$(wildcard $(NAME).bin))
	cp $(TARGET) $(NAME).bin
endif
	mkdir -p expected && cp -r build expected/build

$(TARGET): $(ELF)
	$(OBJCOPY) -O binary $< $(@:.bin=.tmp)
	dd if=$(@:.bin=.tmp) of=$@ bs=8 conv=sync status=none
	#@$(RM) $(@:.bin=.tmp)

$(ELF): $(O_FILES) $(NAME).$(VERSION).ld
	$(LD) -T $(NAME).$(VERSION).ld --accept-unknown-input-arch -T undefined_syms_$(VERSION).txt -T undefined_funcs_$(VERSION).txt -o $@ -Map $(@:.elf=.map)

build/$(VERSION):
	mkdir $@

build/$(VERSION)/assets:
	mkdir $@

build/$(VERSION)/assets/$(VERSION): build/$(VERSION)/assets
	mkdir $@

build/$(VERSION)/assets/$(VERSION)/%.bin.o: assets/$(VERSION)/%.bin | build/$(VERSION)/assets/$(VERSION)
	$(OBJCOPY) -I binary -O elf32-big $< $@

build/$(VERSION)/asm/$(VERSION)/%.s.o: asm/$(VERSION)/%.s
	#$(AS) $(ASFLAGS) -I include $< -o $@
	$(UNIX2DOS) $<
	$(SNAS) $(SNASFLAGS) $< -o $@.obj
	../tools/psyq-obj-parser $@.obj -o $@ -b -n > /dev/null
	@$(STRIP) -N dummy_symbol_ $@

build/$(VERSION)/src/%.s.o: src/%.s
	$(CC) -x assembler-with-cpp $(ASFLAGS) -c $< -o $@
	@$(STRIP) -N dummy_symbol_ $@
	@$(OBJDUMP) -drz $@ > $(@:.o=.s)

build/$(VERSION)/src/%.c.o: build/$(VERSION)/src/%.c.obj
	../tools/psyq-obj-parser $< -o $@ -b -n > /dev/null
	@$(STRIP) -N dummy_symbol_ $@
	#@$(OBJDUMP) -drz $@ > $(@:.o=.s)

build/$(VERSION)/src/%.c.obj: src/%.c
	$(UNIX2DOS) $<
	$(CPP) $(CPPFLAGS) $< -o $@.i
	$(CC) $(CFLAGS) $(OPTFLAGS) $@.i -o $@.s
	$(SNAS) $(SNASFLAGS) $@.s -o $@

build/permute.c.o: build/permute.c.obj
	../tools/psyq-obj-parser $< -o $@ -b -n > /dev/null
	@$(STRIP) -N dummy_symbol_ $@
	@$(OBJDUMP) -drz $@ > $(@:.o=.s)

build/permute.c.obj: permute.c
	$(UNIX2DOS) $<
	$(CPP) $(CPPFLAGS) $< -o $@.i
	$(CC) $(CFLAGS) $(OPTFLAGS) $@.i -o $@.s
	$(SNAS) $(SNASFLAGS) $@.s -o $@
