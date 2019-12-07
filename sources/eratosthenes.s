        .file	"eratosthenes.cpp"
        .intel_syntax noprefix
        .text
        .p2align 4,,15
        .globl	_Z12eratosthenesPcmPFvmE
        .type	_Z12eratosthenesPcmPFvmE, @function


_Z12eratosthenesPcmPFvmE:
.LFB1564:
        .cfi_startproc

        ## rdi, buffer
        ## rsi, nb_bits
        ## rdx, callback


        mov r15,rdx             # callback

        
        push rdi                # apparemment cette fonction veut une
                                # case sur la pile (rdi ne sert aucune
                                # fonction ici)
        mov rdi,2               # cas special 2
        call r15
        pop rdi                 # case sur la pile


        ## votre stuff ici!

        ret

        .cfi_endproc
.LFE1564:
        .size	_Z12eratosthenesPcmPFvmE, .-_Z12eratosthenesPcmPFvmE
        .section	.text.unlikely

        .ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
        .section	.note.GNU-stack,"",@progbits
