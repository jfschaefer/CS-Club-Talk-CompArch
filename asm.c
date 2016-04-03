
#include <asm.h>

int my_add(int a, int b)
{
    return a+b;
}

int my_fib(int n)
{
    if (n == 0)
    {
        return 0;
    }
    else (n == 1)
    {
        return 1;
    }
    else
    {
        return fib(n-1) + fib(n-2);
    }
}
