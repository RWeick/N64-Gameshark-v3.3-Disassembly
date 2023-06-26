SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    main_ROM_START = __romPos;
    main_VRAM = ADDR(.main);
    .main 0x80200400 : AT(main_ROM_START) SUBALIGN(16)
    {
        main_TEXT_START = .;
        build/eu/src/main.c.o(.text);
        build/eu/src/540.c.o(.text);
        build/eu/src/2CA0.c.o(.text);
        main_TEXT_END = .;
        main_TEXT_SIZE = ABSOLUTE(main_TEXT_END - main_TEXT_START);
        main_DATA_START = .;
        _5050_bin = .;
        build/eu/assets/eu/5050.bin.o(.data);
        main_c = .;
        build/eu/src/main.c.o(.data);
        _540_c = .;
        build/eu/src/540.c.o(.data);
        _2CA0_c = .;
        build/eu/src/2CA0.c.o(.data);
        main_DATA_END = .;
        main_DATA_SIZE = ABSOLUTE(main_DATA_END - main_DATA_START);
        main_RODATA_START = .;
        build/eu/src/main.c.o(.rodata);
        build/eu/src/540.c.o(.rodata);
        build/eu/src/2CA0.c.o(.rodata);
        main_RODATA_END = .;
        main_RODATA_SIZE = ABSOLUTE(main_RODATA_END - main_RODATA_START);
    }
    main_bss_VRAM = ADDR(.main_bss);
    .main_bss (NOLOAD) : SUBALIGN(16)
    {
        main_BSS_START = .;
        build/eu/src/main.c.o(.bss);
        build/eu/src/540.c.o(.bss);
        build/eu/src/2CA0.c.o(.bss);
        main_BSS_END = .;
        main_BSS_SIZE = ABSOLUTE(main_BSS_END - main_BSS_START);
    }
    __romPos += SIZEOF(.main);
    __romPos = ALIGN(__romPos, 16);
    main_ROM_END = __romPos;
    main_VRAM_END = .;

    data_ROM_START = __romPos;
    data_VRAM = ADDR(.data);
    .data main_VRAM_END : AT(data_ROM_START) SUBALIGN(1)
    {
        data_DATA_START = .;
        _22800_bin = .;
        build/eu/assets/eu/22800.bin.o(.data);
        font_png = .;
        build/eu/assets/eu/font.png.o(.data);
        _255C0_bin = .;
        build/eu/assets/eu/255C0.bin.o(.data);
        fsblob_bin = .;
        build/eu/assets/eu/fsblob.bin.o(.data);
        _29A2E_bin = .;
        build/eu/assets/eu/29A2E.bin.o(.data);
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
