#ifndef __MODULE_BITS__
#define __MODULE_BITS__

#include <cstddef> // pour size_t

void set_bit(char * buffer, size_t offset, int value);
int  get_bit(const char * buffer, size_t offset);

#endif
  // __MODULE_BITS__
