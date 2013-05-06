#include "bad-header.h"
int foo2() 
{ 
  return ""+1; 
}  
/* #### (setq flymake-acc-ler '("bad-header.h" 3 "e" "size of array `a' is negative" "bad-header.h"))
   #### (setq flymake-acc-ler '(nil 4 "w" "warning: return makes integer from pointer without a cast" "bad-master.c"))
*/

