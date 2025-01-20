// file = 0; split type = patterns; threshold = 100000; total count = 0.
#include <stdio.h>
#include <stdlib.h>
#include <strings.h>
#include "rmapats.h"

void  schedNewEvent (struct dummyq_struct * I1424, EBLK  * I1419, U  I626);
void  schedNewEvent (struct dummyq_struct * I1424, EBLK  * I1419, U  I626)
{
    U  I1699;
    U  I1700;
    U  I1701;
    struct futq * I1702;
    struct dummyq_struct * pQ = I1424;
    I1699 = ((U )vcs_clocks) + I626;
    I1701 = I1699 & ((1 << fHashTableSize) - 1);
    I1419->I669 = (EBLK  *)(-1);
    I1419->I670 = I1699;
    if (0 && rmaProfEvtProp) {
        vcs_simpSetEBlkEvtID(I1419);
    }
    if (I1699 < (U )vcs_clocks) {
        I1700 = ((U  *)&vcs_clocks)[1];
        sched_millenium(pQ, I1419, I1700 + 1, I1699);
    }
    else if ((peblkFutQ1Head != ((void *)0)) && (I626 == 1)) {
        I1419->I672 = (struct eblk *)peblkFutQ1Tail;
        peblkFutQ1Tail->I669 = I1419;
        peblkFutQ1Tail = I1419;
    }
    else if ((I1702 = pQ->I1326[I1701].I692)) {
        I1419->I672 = (struct eblk *)I1702->I690;
        I1702->I690->I669 = (RP )I1419;
        I1702->I690 = (RmaEblk  *)I1419;
    }
    else {
        sched_hsopt(pQ, I1419, I1699);
    }
}
#ifdef __cplusplus
extern "C" {
#endif
void SinitHsimPats(void);
#ifdef __cplusplus
}
#endif
