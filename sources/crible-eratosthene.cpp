#include <cstdint>
#include <limits>
#include <iostream>
#include <vector>

#include <helpers.hpp>
#include <bits.hpp>
#include <eratosthenes.hpp>


void show(size_t x) { std::cout << x << " " << std::flush; }

int main()
 {
  const size_t nb_bits = size_t{1} << std::numeric_limits<uint32_t>::digits;
  //const size_t nb_bits=1000000;
  const size_t nb_bytes = (nb_bits+7)/8;

  // passe-passe pour garantir zéro
  // voir: ISO/IEC 14882-2011, § 5.3.4.15
  // et § 8.5.16
  char * bits = new char[nb_bytes]();

  eratosthenes(bits,nb_bits,show);
  
  delete[] bits;

  return 0;
 }
