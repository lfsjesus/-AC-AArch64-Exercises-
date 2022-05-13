/*
double sumf(double *seqA, int tamA)

f(x): y(x) if x < 0, else sqrt(5 + x^2)    (y(x) is another sub-routine labeled "funcy")

this sub-routine returns the summation of all the elements after applying function f.

*/

.text
.global sumf
.type sumf,%function

sumf:
  stp x29, x30, [ sp, - 64 ]!
  mov x29, sp
  mov W2, 0
  scvtf D1, W2 
  scvtf D2, W2 
  mov W3, 5
  scvtf D3, W3 
loop:
  cbz W1, end
  ldr D4, [ X0 ] , 8
  sub w1, w1, 1
  fcmp D4, D2
  b.lt callFuncY
  fmul D4, D4, D4
  fadd D4, D4, D3
  fsqrt D4, D4
  fadd D1, D1, D4
  b loop
callFuncY:
  fmov D0, D4
  stp X0, X1, [ sp, 16 ]
  stp D1, D2, [ sp, 32 ]
  str D3, [ sp, 48 ]
  bl funcy
  ldp X0, X1, [ sp, 16 ] 
  ldp D1, D2, [ sp, 32 ]
  ldr D3, [ sp, 48 ]
  fadd D1, D1, D0
  b loop
end:
  fmov D0, D1
  ldp x29, x30, [ sp ] , 64
  ret
