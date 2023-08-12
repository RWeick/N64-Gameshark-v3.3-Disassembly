SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    main_ROM_START = __romPos;
    main_VRAM = ADDR(.main);
    .main 0x80780800 : AT(main_ROM_START) SUBALIGN(16)
    {
        main_TEXT_START = .;
        build/us/src/main.c.o(.text);
        build/us/src/450.c.o(.text);
        build/us/src/AE0.s.o(.text);
        build/us/src/C40.c.o(.text);
        build/us/src/F80.c.o(.text);
        build/us/src/5390.c.o(.text);
        build/us/src/5960.c.o(.text);
        build/us/src/hw.c.o(.text);
        build/us/src/7850.c.o(.text);
        build/us/src/F8E0.c.o(.text);
        build/us/src/14280.s.o(.text);
        main_TEXT_END = .;
        main_TEXT_SIZE = ABSOLUTE(main_TEXT_END - main_TEXT_START);
        main_DATA_START = .;
        _145C0_bin = .;
        build/us/assets/us/145C0.bin.o(.data);
        main_c = .;
        build/us/src/main.c.o(.data);
        _450_c = .;
        build/us/src/450.c.o(.data);
        AE0_s = .;
        build/us/src/AE0.s.o(.data);
        C40_c = .;
        build/us/src/C40.c.o(.data);
        F80_c = .;
        build/us/src/F80.c.o(.data);
        _5390_c = .;
        build/us/src/5390.c.o(.data);
        _5960_c = .;
        build/us/src/5960.c.o(.data);
        hw_c = .;
        build/us/src/hw.c.o(.data);
        _7850_c = .;
        build/us/src/7850.c.o(.data);
        F8E0_c = .;
        build/us/src/F8E0.c.o(.data);
        _14280_s = .;
        build/us/src/14280.s.o(.data);
        main_DATA_END = .;
        main_DATA_SIZE = ABSOLUTE(main_DATA_END - main_DATA_START);
        main_RODATA_START = .;
        build/us/src/main.c.o(.rodata);
        build/us/src/450.c.o(.rodata);
        build/us/src/AE0.s.o(.rodata);
        build/us/src/C40.c.o(.rodata);
        build/us/src/F80.c.o(.rodata);
        build/us/src/5390.c.o(.rodata);
        build/us/src/5960.c.o(.rodata);
        build/us/src/hw.c.o(.rodata);
        build/us/src/7850.c.o(.rodata);
        build/us/src/F8E0.c.o(.rodata);
        build/us/src/14280.s.o(.rodata);
        main_RODATA_END = .;
        main_RODATA_SIZE = ABSOLUTE(main_RODATA_END - main_RODATA_START);
    }
    main_bss_VRAM = ADDR(.main_bss);
    .main_bss (NOLOAD) : SUBALIGN(16)
    {
        main_BSS_START = .;
        build/us/src/main.c.o(.bss);
        build/us/src/450.c.o(.bss);
        build/us/src/AE0.s.o(.bss);
        build/us/src/C40.c.o(.bss);
        build/us/src/F80.c.o(.bss);
        build/us/src/5390.c.o(.bss);
        build/us/src/5960.c.o(.bss);
        build/us/src/hw.c.o(.bss);
        build/us/src/7850.c.o(.bss);
        build/us/src/F8E0.c.o(.bss);
        build/us/src/14280.s.o(.bss);
        main_BSS_END = .;
        main_BSS_SIZE = ABSOLUTE(main_BSS_END - main_BSS_START);
    }
    __romPos += SIZEOF(.main);
    __romPos = ALIGN(__romPos, 16);
    main_ROM_END = __romPos;
    main_VRAM_END = .;

    fsblob_ROM_START = __romPos;
    fsblob_VRAM = ADDR(.fsblob);
    .fsblob main_VRAM_END : AT(fsblob_ROM_START) SUBALIGN(16)
    {
        fsblob_DATA_START = .;
        fsblob_bin = .;
        build/us/assets/us/fsblob.bin.o(.data);
        fsblob_DATA_END = .;
        fsblob_DATA_SIZE = ABSOLUTE(fsblob_DATA_END - fsblob_DATA_START);
    }
    __romPos += SIZEOF(.fsblob);
    fsblob_ROM_END = __romPos;
    fsblob_VRAM_END = .;

    data_ROM_START = __romPos;
    data_VRAM = ADDR(.data);
    .data fsblob_VRAM_END : AT(data_ROM_START) SUBALIGN(16)
    {
        data_DATA_START = .;
        data_bin = .;
        build/us/assets/us/data.bin.o(.data);
        data_DATA_END = .;
        data_DATA_SIZE = ABSOLUTE(data_DATA_END - data_DATA_START);
    }
    __romPos += SIZEOF(.data);
    data_ROM_END = __romPos;
    data_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
