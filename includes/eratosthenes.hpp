#ifndef __MODULE_ERATOSTHENES__
#define __MODULE_ERATOSTHENES__

#include <cstddef> // pour size_t

using eratosthenes_callback=void (*)(size_t);

void eratosthenes( char * bits,
                   size_t nb_bits,
                   eratosthenes_callback callback);

#endif
   // __MODULE_ERATOSTHENES__
