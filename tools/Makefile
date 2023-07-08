
.PHONY: all clean distclean

GCC_DIR := gcc
GCC-AS := $(GCC_DIR)/as $(GCC_DIR)/asn64.exe
GCC-2.8.1 := $(GCC_DIR)/gcc $(GCC_DIR)/cc1n64.exe $(GCC_DIR)/cppn64.exe

PSYQ := psyq-obj-parser

LZARI := lzari/lzari

FSBLOB := fsblob/target/release/fsblob

PIGMENT := pigment/target/release/pigment

all: $(GCC-AS) $(GCC-2.8.1) $(PSYQ) $(LZARI) $(FSBLOB) $(PIGMENT)

clean:
distclean: clean
	$(RM) -rf $(GCC_DIR)

# GCC

$(GCC-2.8.1): | $(GCC_DIR)
	wget https://github.com/pmret/gcc-papermario/releases/download/master/linux.tar.gz
	tar -xf linux.tar.gz -C gcc
	rm linux.tar.gz
	wget https://github.com/marijnvdwerf/sn64/releases/download/1%2C0%2C0%2C2/cc1n64.exe
	wget https://github.com/marijnvdwerf/sn64/releases/download/1%2C0%2C0%2C2/cppn64.exe
	mv cc1n64.exe cppn64.exe $(GCC_DIR)

$(GCC-AS): | $(GCC_DIR)
	wget https://github.com/pmret/binutils-papermario/releases/download/master/linux.tar.gz
	tar -xf linux.tar.gz -C gcc
	rm linux.tar.gz
	wget https://github.com/marijnvdwerf/sn64/releases/download/1%2C0%2C0%2C2/asn64.exe
	mv asn64.exe $(GCC_DIR)

$(PSYQ):
	chmod +x psyq-obj-parser

$(LZARI): lzari/LZARI.C
	cc -x c -g -O2 -Wall -o $@ $<

$(FSBLOB): fsblob/Cargo.toml fsblob/Cargo.lock fsblob/src/main.rs fsblob/src/lib.rs
	cd fsblob && cargo build --release

$(PIGMENT): pigment/Cargo.toml pigment/Cargo.lock pigment/src/main.rs pigment/src/lib.rs
	cd pigment && cargo build --release

$(GCC_DIR):
	mkdir -p $@