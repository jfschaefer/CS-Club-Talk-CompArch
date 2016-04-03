/** @file asm.h
 *  @brief This file defines some functions that are implemented in assembly.
 *
 *  Keep in mind some of the explanations are handwavy to allow easier
 *  understanding of the main idea.
 *
 *  @author Denis Rochau (drochau)
 *  @bug No known bugs.
 */

#ifndef INCLUDED_ASM_H
#define INCLUDED_ASM_H

/**
 * @brief Adds two integers.
 * 
 * This is only a declaration, which specifies the properties of an
 * identifier and announes its existent to the compiler. 
 * It only declares a new function with the name my_add that takes two
 * integers a and b and returns an integer. It does not contain any
 * information what this new function actually does! This information
 * is going to be specified in the defintion of the function.
 *
 * @param a The first integer.
 * @param b The second integer.
 *
 * @return Returns the sum of both integers.
 */
int my_add(int a, int b);

int my_fib(int n);

#endif

