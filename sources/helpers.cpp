#include <iostream>
#include <cstddef>


size_t int_sqrt(size_t x)
 {
  if (x>1)
   {
    size_t d=x/2;
    size_t ld=d;
    do
     {
      ld=d;
      d=(d+x/d)/2;
     }
    while (d<ld); // test convergence

    return d;
   }
  else
   // sinon trop imprecis
   return x;
 }
