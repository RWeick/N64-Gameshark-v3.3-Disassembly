SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    header_ROM_START = __romPos;
    header_VRAM = ADDR(.header);
    .header : AT(header_ROM_START) SUBALIGN(16)
    {
        header_DATA_START = .;
        header_s = .;
        build/asm/header.s.o(.data);
        header_DATA_END = .;
        header_DATA_SIZE = ABSOLUTE(header_DATA_END - header_DATA_START);
    }
    __romPos += SIZEOF(.header);
    header_ROM_END = __romPos;
    header_VRAM_END = .;

    boot_ROM_START = __romPos;
    boot_VRAM = ADDR(.boot);
    .boot : AT(boot_ROM_START) SUBALIGN(16)
    {
        boot_DATA_START = .;
        boot_bin = .;
        build/assets/boot.bin.o(.data);
        boot_DATA_END = .;
        boot_DATA_SIZE = ABSOLUTE(boot_DATA_END - boot_DATA_START);
    }
    __romPos += SIZEOF(.boot);
    boot_ROM_END = __romPos;
    boot_VRAM_END = .;

    entry_ROM_START = __romPos;
    entry_VRAM = ADDR(.entry);
    .entry 0x80200400 : AT(entry_ROM_START) SUBALIGN(16)
    {
        entry_TEXT_START = .;
        build/asm/1000.s.o(.text);
        entry_TEXT_END = .;
        entry_TEXT_SIZE = ABSOLUTE(entry_TEXT_END - entry_TEXT_START);
        entry_DATA_START = .;
        _1000_s = .;
        build/asm/1000.s.o(.data);
        entry_DATA_END = .;
        entry_DATA_SIZE = ABSOLUTE(entry_DATA_END - entry_DATA_START);
        entry_RODATA_START = .;
        build/asm/1000.s.o(.rodata);
        entry_RODATA_END = .;
        entry_RODATA_SIZE = ABSOLUTE(entry_RODATA_END - entry_RODATA_START);
    }
    entry_bss_VRAM = ADDR(.entry_bss);
    .entry_bss (NOLOAD) : SUBALIGN(16)
    {
        entry_BSS_START = .;
        build/asm/1000.s.o(.bss);
        entry_BSS_END = .;
        entry_BSS_SIZE = ABSOLUTE(entry_BSS_END - entry_BSS_START);
    }
    __romPos += SIZEOF(.entry);
    __romPos = ALIGN(__romPos, 16);
    entry_ROM_END = __romPos;
    entry_VRAM_END = .;

    loader_ROM_START = __romPos;
    loader_VRAM = ADDR(.loader);
    .loader entry_VRAM_END : AT(loader_ROM_START) SUBALIGN(16)
    {
        loader_TEXT_START = .;
        build/asm/1080.s.o(.text);
        loader_TEXT_END = .;
        loader_TEXT_SIZE = ABSOLUTE(loader_TEXT_END - loader_TEXT_START);
        loader_DATA_START = .;
        _1080_s = .;
        build/asm/1080.s.o(.data);
        loader_DATA_END = .;
        loader_DATA_SIZE = ABSOLUTE(loader_DATA_END - loader_DATA_START);
        loader_RODATA_START = .;
        build/asm/1080.s.o(.rodata);
        loader_RODATA_END = .;
        loader_RODATA_SIZE = ABSOLUTE(loader_RODATA_END - loader_RODATA_START);
    }
    loader_bss_VRAM = ADDR(.loader_bss);
    .loader_bss (NOLOAD) : SUBALIGN(16)
    {
        loader_BSS_START = .;
        build/asm/1080.s.o(.bss);
        loader_BSS_END = .;
        loader_BSS_SIZE = ABSOLUTE(loader_BSS_END - loader_BSS_START);
    }
    __romPos += SIZEOF(.loader);
    __romPos = ALIGN(__romPos, 16);
    loader_ROM_END = __romPos;
    loader_VRAM_END = .;

    main_ROM_START = __romPos;
    main_VRAM = ADDR(.main);
    .main 0x80040180 : AT(main_ROM_START) SUBALIGN(16)
    {
        main_TEXT_START = .;
        build/src/main.c.o(.text);
        main_TEXT_END = .;
        main_TEXT_SIZE = ABSOLUTE(main_TEXT_END - main_TEXT_START);
        main_DATA_START = .;
        main_c = .;
        build/src/main.c.o(.data);
        main_DATA_END = .;
        main_DATA_SIZE = ABSOLUTE(main_DATA_END - main_DATA_START);
        main_RODATA_START = .;
        build/src/main.c.o(.rodata);
        main_RODATA_END = .;
        main_RODATA_SIZE = ABSOLUTE(main_RODATA_END - main_RODATA_START);
    }
    main_bss_VRAM = ADDR(.main_bss);
    .main_bss (NOLOAD) : SUBALIGN(16)
    {
        main_BSS_START = .;
        build/src/main.c.o(.bss);
        main_BSS_END = .;
        main_BSS_SIZE = ABSOLUTE(main_BSS_END - main_BSS_START);
    }
    __romPos += SIZEOF(.main);
    __romPos = ALIGN(__romPos, 16);
    main_ROM_END = __romPos;
    main_VRAM_END = .;

    data_ROM_START = __romPos;
    data_VRAM = ADDR(.data);
    .data main_VRAM_END : AT(data_ROM_START) SUBALIGN(16)
    {
        data_DATA_START = .;
        _39C0_bin = .;
        build/assets/39C0.bin.o(.data);
        data_TEXT_START = .;
        build/asm/2F000.s.o(.text);
        data_TEXT_END = .;
        data_TEXT_SIZE = ABSOLUTE(data_TEXT_END - data_TEXT_START);
        _2F100_bin = .;
        build/assets/2F100.bin.o(.data);
        _2F000_s = .;
        build/asm/2F000.s.o(.data);
        data_DATA_END = .;
        data_DATA_SIZE = ABSOLUTE(data_DATA_END - data_DATA_START);
        data_RODATA_START = .;
        build/asm/2F000.s.o(.rodata);
        data_RODATA_END = .;
        data_RODATA_SIZE = ABSOLUTE(data_RODATA_END - data_RODATA_START);
    }
    data_bss_VRAM = ADDR(.data_bss);
    .data_bss (NOLOAD) : SUBALIGN(16)
    {
        data_BSS_START = .;
        build/asm/2F000.s.o(.bss);
        data_BSS_END = .;
        data_BSS_SIZE = ABSOLUTE(data_BSS_END - data_BSS_START);
    }
    __romPos += SIZEOF(.data);
    __romPos = ALIGN(__romPos, 16);
    data_ROM_END = __romPos;
    data_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
