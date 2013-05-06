#include "bad-header.h"
int foo2() 
{ 
  return ""+1; 
}  
// #### (setq flymake-acc-ler '("bad-header.h" 3 "e" "error C2118: negative subscript or subscript is too large" "bad-header.h"))
// #### (setq flymake-acc-ler '(nil 4 "e" "error C2440: 'return' : cannot convert from 'char [1]' to 'int'" "bad-master.cpp"))
