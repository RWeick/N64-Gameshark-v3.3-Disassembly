from typing import List, Optional

from util import log

from os import makedirs
from os.path import dirname, realpath

from segtypes.common.bin import CommonSegBin

from struct import unpack
from subprocess import run
from tempfile import TemporaryDirectory

class N64SegFsblob(CommonSegBin):
    def __init__(
        self,
        rom_start: Optional[int],
        rom_end: Optional[int],
        type: str,
        name: str,
        vram_start: Optional[int],
        args: list,
        yaml,
    ):
        super().__init__(
            rom_start,
            rom_end,
            type,
            name,
            vram_start,
            args=args,
            yaml=yaml,
        )

    
    def scan(self, rom_bytes):
        self.files = {}
        index = self.rom_start
        while index < self.rom_end - 0x10:
            add, name = unpack(">I12s", rom_bytes[index:index + 0x10])
            
            if add == 0xFFFFFFFF:
                break
            
            try:
                name = name.split(b"\0")[0].decode()
            except:
                break
            
            data = rom_bytes[index + 0x10:index + add]
            self.files[name] = data
            index += add

    def split(self, rom_bytes):
        for file in self.files.keys():
            with TemporaryDirectory() as tempdir:
                with open(f"{tempdir}/comp.bin", "wb") as g:
                    g.write(self.files[file])
                run([f"{dirname(realpath(__file__))}/../lzari/lzari", "d", f"{tempdir}/comp.bin", f"{tempdir}/dec.bin"])
                with open(f"{tempdir}/dec.bin", "rb") as f:
                    dec = bytearray(f.read())
                    makedirs(self.yaml["out_dir"], exist_ok = True)
                    with open(f"{self.yaml['out_dir']}/{file}", "wb") as g:
                        g.write(dec)
            
