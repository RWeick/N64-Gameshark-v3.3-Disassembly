from util import options

from segtypes.common.asm import CommonSegAsm


class N64SegSnasm(CommonSegAsm):
    @staticmethod
    def get_file_header():
        ret = []

        preamble = options.opts.generated_s_preamble
        if preamble:
            ret.append(preamble)
            ret.append("")
        ret.append('.section .text, "ax"')
        ret.append("")

        return ret