from itertools import zip_longest
from pathlib import Path
from typing import List, Optional, Tuple, TYPE_CHECKING

from util import log, options
from math import ceil

from segtypes.n64.palette import N64SegPalette

if TYPE_CHECKING:
    from segtypes.n64.ci import N64SegCi as Raster


def iter_in_groups(iterable, n, fillvalue=None):
    args = [iter(iterable)] * n
    return zip_longest(*args, fillvalue=fillvalue)

def unpack_color(data):
    r = data[0]
    g = data[1]
    b = data[2]
    a = 0xFF

    r = ceil(0xFF * (r / 31))
    g = ceil(0xFF * (g / 31))
    b = ceil(0xFF * (b / 31))

    return r, g, b, a
    
class N64SegGspalette(N64SegPalette):
    require_unique_name = False

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)

    def parse_palette(self, rom_bytes) -> List[Tuple[int, int, int, int]]:
        assert isinstance(self.rom_start, int)
        assert isinstance(self.rom_end, int)

        data = rom_bytes
        palette = []

        for a, b, c in iter_in_groups(data, 3):
            palette.append(unpack_color([a, b, c]))
        
        return palette
    
    def max_length(self):
        return 256 * 3