#include "catch.hpp"

#include "solution.h"

// For more info on how to use Catch testing library:
// https://github.com/catchorg/Catch2/blob/master/docs/tutorial.md

TEST_CASE("Factorials are computed", "[factorial]")
{
  REQUIRE(Factorial(0) == 1);
  REQUIRE(Factorial(1) == 1);
  REQUIRE(Factorial(2) == 2);
  REQUIRE(Factorial(3) == 6);
  REQUIRE(Factorial(10) == 3628800);
}
