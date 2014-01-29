#include <machine/asm.h>
ENTRY(modf)
    vcvt.s32.f32    d1, d0
    vcvt.f32.s32    d2, d1
    vsub.f32        d0, d0, d2
    vstr.i32         s2, [r0]
    RET
END(modf)
