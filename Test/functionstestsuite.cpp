#include"functions.hpp"
#include<gtest/gtest.h>
#include<array>


using namespace ::testing;

struct functionsTestSuite : public Test
{
    std::array<int, 11> tab = {{1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89}};
};

TEST_F(functionsTestSuite, fibonacciSequence)
{
    int n = 1;
    for(auto const i : tab)
    {
        ASSERT_EQ(i, functions::fib(n++));
    }
}
