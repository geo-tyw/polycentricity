 import excel "D:\file.xlsx", sheet("00-20") firstrow

 xtset ID t, yearly
 
 xthreg i x1 x2 x3 x4 , rx(x) qx(q) thnum(1) trim(0.01) grid(400) bs(300)
 
  _matplot e(LR21), columns(1 2) yline(7.35, lpattern(dash)) connect(direct) msize(small) mlabp(0) mlabs(zero) ytitle("LR Statistics"
> ) xtitle("First Threshold") recast(line) name(LR21) nodraw
