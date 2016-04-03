/** @file main.c
 *  @brief The main file defining the entry point of the program.
 *
 *  Keep in mind some of the explanations are handwavy to allow easier
 *  understanding of the main idea.
 *
 *  @author Denis Rochau (drochau)
 *  @bug No known bugs.
 */

/**
 * standard headers
 */
#include <stdio.h>

/**
 * project headers
 */
#include <asm.h>

int main(int argc, char* argv[])
{
    int a = 16;
    int b = 240;

    int result = my_add(a, b);

    fprintf(stdout, "Result: %d\n", result);

	return 0;
}
