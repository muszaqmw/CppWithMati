#include"functions.hpp"

namespace functions

{

int fib(int n)
{
    int nPlusTwoValue, tempOne, tempTwo;
    int nValue = 0;
    int nPlusOneValue = 1;

    for ( int l = 1; l < n; l++ )
    {
        tempTwo = nValue;
        tempOne = nPlusOneValue;
        nPlusTwoValue = nPlusOneValue + nValue;
        nPlusOneValue = nPlusTwoValue;
        nValue = tempOne;
    }

    return nPlusTwoValue;
}

}
