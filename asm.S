/** @file asm.S
 *  @brief Contains the assembly code for the the functions declared in asm.h.
 *
 *  @author Denis Rochau (drochau)
 *  @bug Need to replace _my_add by my_add on some machines
 */

/************************
 *                      *
 * Some Assembly Review *
 *                      *
 ************************/


/** Basic Register Overview:
 * Caller-Save Temporaries:
 * - %eax
 * - %edx
 * - %ecx
 * 
 * Callee-Save Temporaries:
 * - %ebx
 * - %esi
 * - %edi
 *
 * Special:
 * - %esp # Stack Pointer
 * - %ebp # Base Pointer
 */

/**
 * Directives:
 * Directives start with a dot and they are used to indicate structural
 * information to compiler and assembler.
 *
 * Important is the .globl option! It should be the name of your
 * function. For crossplattform development the function name needs to be
 * prepended with an underscore ('_')
 *
 * Labels:
 * Labels end with a colon and are used to form an association between
 * a name like _my_add and a location i.e. which instruction should be run 
 * first.
 *
 * Instructions:
 * Nearly everything else except comments etc. are assembly instruction,
 * that are used to create 
 */



/*********************************
 *                               *
 * From here on real code starts *
 *                               *
 *********************************/

.globl _my_add

_my_add:
    # setup stack frame
    pushl     %ebp              # push current base pointer onto stack
    movl      %esp, %ebp        # move current stack pointer into the base
                                # pointer register

    # save the callee saved register that we want to use
    pushl     %ebx              # save %ebx by pushing it onto the stack as we
                                # want to use it and it is a callee saved
                                # register

    movl      8(%ebp), %eax     # load first argument into register %eax
                                # there was no need to save this register as it
                                # is caller saved

    movl      12(%ebp), %ebx    # load second argument into register %ebx

    addl      %ebx, %eax        # add the value in register %ebx to the value
                                # in register %eax and store it in %eax

    # %eax is also the return value register so we do not need to move the value
    # there because it already is 

    # load the original value that was in the callee saved register back
    popl      %ebx

    # reset the base pointer and return from the function to the return
    # address
    popl      %ebp
    ret

