.section .data

.word 0x80371240       /* PI BSB Domain 1 register */
.word 0x0000000F       /* Clockrate setting */
.word 0x80200400       /* Entrypoint address */
.word 0x00001444       /* Revision */
.word 0xEA6D5BF8       /* Checksum 1 */
.word 0xE2B4696C       /* Checksum 2 */
.word 0x00000000       /* Unknown 1 */
.word 0x00000000       /* Unknown 2 */
.ascii "(C) MUSHROOM &NU15:5" /* Internal name */
.word 0x36204170       /* Unknown 3 */
.word 0x72203420       /* Cartridge */
.word 0x08D02702
