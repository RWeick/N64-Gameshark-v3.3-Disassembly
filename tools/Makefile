
.PHONY: all clean distclean

GCC_DIR := gcc
GCC-AS := $(GCC_DIR)/as
GCC-2.8.1 := $(GCC_DIR)/gcc

all: $(GCC-AS) $(GCC-2.8.1) $(PSYQ)

clean:
distclean: clean
	$(RM) -rf $(GCC_DIR)

# GCC

$(GCC-2.8.1): | $(GCC_DIR)
	wget https://github.com/marijnvdwerf/sn64/releases/download/1%2C0%2C0%2C2/cc1n64.exe
	mv cc1n64.exe $(GCC_DIR)

$(GCC-AS): | $(GCC_DIR)
	wget https://github.com/marijnvdwerf/sn64/releases/download/1%2C0%2C0%2C2/asn64.exe
	mv asn64.exe $(GCC_DIR)

$(PSYQ):
	chmod +x psyq-obj-parser

$(GCC_DIR):
	mkdir -p $@