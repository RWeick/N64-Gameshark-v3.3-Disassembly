SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    main_ROM_START = __romPos;
    main_VRAM = ADDR(.main);
    .main 0x80780800 : AT(main_ROM_START) SUBALIGN(16)
    {
        main_TEXT_START = .;
        build/eu/src/0.c.o(.text);
        build/eu/src/450.c.o(.text);
        build/eu/asm/eu/14280.s.o(.text);
        main_TEXT_END = .;
        main_TEXT_SIZE = ABSOLUTE(main_TEXT_END - main_TEXT_START);
        main_DATA_START = .;
        _0_c = .;
        build/eu/src/0.c.o(.data);
        _450_c = .;
        build/eu/src/450.c.o(.data);
        _14280_s = .;
        build/eu/asm/eu/14280.s.o(.data);
        main_DATA_END = .;
        main_DATA_SIZE = ABSOLUTE(main_DATA_END - main_DATA_START);
        main_RODATA_START = .;
        build/eu/src/0.c.o(.rodata);
        build/eu/src/450.c.o(.rodata);
        build/eu/asm/eu/14280.s.o(.rodata);
        main_RODATA_END = .;
        main_RODATA_SIZE = ABSOLUTE(main_RODATA_END - main_RODATA_START);
    }
    main_bss_VRAM = ADDR(.main_bss);
    .main_bss (NOLOAD) : SUBALIGN(16)
    {
        main_BSS_START = .;
        build/eu/src/0.c.o(.bss);
        build/eu/src/450.c.o(.bss);
        build/eu/asm/eu/14280.s.o(.bss);
        main_BSS_END = .;
        main_BSS_SIZE = ABSOLUTE(main_BSS_END - main_BSS_START);
    }
    __romPos += SIZEOF(.main);
    __romPos = ALIGN(__romPos, 16);
    main_ROM_END = __romPos;
    main_VRAM_END = .;

    /DISCARD/ :
    {
        *(*);
    }
}
