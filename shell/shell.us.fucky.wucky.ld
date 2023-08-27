SECTIONS
{
    __romPos = 0;
    _gp = 0x0;
    main_ROM_START = __romPos;
    main_VRAM = ADDR(.main);
    .main 0x80200400 : AT(main_ROM_START) SUBALIGN(16)
    {
        main_TEXT_START = .;
        build/us/src/main.c.o(.text);
        build/us/src/540.c.o(.text);
        build/us/src/2CA0.c.o(.text);
        build/us/src/5050.c.o(.text);
        build/us/src/ai.c.o(.text);
        build/us/src/5E30.c.o(.text);
        build/us/src/6380.c.o(.text);
        build/us/src/scousers.c.o(.text);
        build/us/src/7D60.c.o(.text);
        build/us/src/D880.c.o(.text);
        build/us/src/DF40.c.o(.text);
        build/us/src/FED0.c.o(.text);
        build/us/src/109A0.c.o(.text);
        build/us/src/140E0.c.o(.text);
        build/us/src/144A0.c.o(.text);
        build/us/src/15360.c.o(.text);
        build/us/src/155D0.c.o(.text);
        build/us/src/lzari.c.o(.text);
        build/us/src/17280.c.o(.text);
        build/us/src/17630.c.o(.text);
        build/us/src/17810.c.o(.text);
        build/us/src/17990.c.o(.text);
        build/us/src/17A50.c.o(.text);
        build/us/src/17F00.c.o(.text);
        build/us/asm/us/18410.s.o(.text);
        main_RODATA_START = .;
        build/us/asm/us/data/18410.rodata.s.o(.rodata);
        build/us/asm/us/1D2C0.s.o(.text);
        build/us/asm/us/1F6E0.s.o(.text);
        build/us/asm/us/1FB00.s.o(.text);
        build/us/src/20CD0.c.o(.text);
        main_TEXT_END = .;
        main_TEXT_SIZE = ABSOLUTE(main_TEXT_END - main_TEXT_START);
        main_DATA_START = .;
        _22720_bin = .;
        build/us/assets/us/22720.bin.o(.data);
        build/us/src/5050.c.o(.rdata);
        _22920_bin = .;
        build/us/assets/us/22920.bin.o(.data);
        build/us/asm/us/data/FED0.rodata.s.o(.rodata);
        _22E00_bin = .;
        build/us/assets/us/22E00.bin.o(.data);
        build/us/asm/us/data/144A0.rodata.s.o(.rodata);
        build/us/src/lzari.c.o(.rdata);
        build/us/src/17630.c.o(.rdata);
        _24860_bin = .;
        build/us/assets/us/24860.bin.o(.data);
        font_png = .;
        build/us/assets/us/font.png.o(.data);
        _25480_bin = .;
        build/us/assets/us/25480.bin.o(.data);
    }
    main_bss_VRAM = ADDR(.main_bss);
    .main_bss (NOLOAD) : SUBALIGN(16)
    {
        main_BSS_START = .;
        build/us/src/main.c.o(.bss);
        build/us/src/540.c.o(.bss);
        build/us/src/2CA0.c.o(.bss);
        build/us/src/5050.c.o(.bss);
        build/us/src/ai.c.o(.bss);
        build/us/src/5E30.c.o(.bss);
        build/us/src/6380.c.o(.bss);
        build/us/src/scousers.c.o(.bss);
        build/us/src/7D60.c.o(.bss);
        build/us/src/D880.c.o(.bss);
        build/us/src/DF40.c.o(.bss);
        build/us/src/FED0.c.o(.bss);
        build/us/src/109A0.c.o(.bss);
        build/us/src/140E0.c.o(.bss);
        build/us/src/144A0.c.o(.bss);
        build/us/src/15360.c.o(.bss);
        build/us/src/155D0.c.o(.bss);
        build/us/src/lzari.c.o(.bss);
        build/us/src/17280.c.o(.bss);
        build/us/src/17630.c.o(.bss);
        build/us/src/17810.c.o(.bss);
        build/us/src/17990.c.o(.bss);
        build/us/src/17A50.c.o(.bss);
        build/us/src/17F00.c.o(.bss);
        build/us/asm/us/18410.s.o(.bss);
        build/us/asm/us/1D2C0.s.o(.bss);
        build/us/asm/us/1F6E0.s.o(.bss);
        build/us/asm/us/1FB00.s.o(.bss);
        build/us/src/20CD0.c.o(.bss);
        main_BSS_END = .;
        main_BSS_SIZE = ABSOLUTE(main_BSS_END - main_BSS_START);
        _5E30_c = .;
        build/us/src/5E30.c.o(.data);
        build/us/src/6380.c.o(.rdata);
        main_RODATA_END = .;
        main_RODATA_SIZE = ABSOLUTE(main_RODATA_END - main_RODATA_START);
        _27720_bin = .;
        build/us/assets/us/27720.bin.o(.data);
        main_DATA_END = .;
        main_DATA_SIZE = ABSOLUTE(main_DATA_END - main_DATA_START);
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
        fsblob_bin = .;
        build/us/assets/us/fsblob.bin.o(.data);
        sfx0_bin = .;
        build/us/assets/us/sfx0.bin.o(.data);
        sfx1_bin = .;
        build/us/assets/us/sfx1.bin.o(.data);
        sfxpad_bin = .;
        build/us/assets/us/sfxpad.bin.o(.data);
        _2D25C_bin = .;
        build/us/assets/us/2D25C.bin.o(.data);
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
