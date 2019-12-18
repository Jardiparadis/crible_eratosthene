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


        mov r15, rdx            # callback
        mov r14, rsi            # nb_bits

        push rdi
        mov rdi, r14
        call _Z8int_sqrtm
        pop rdi
        mov r13, rax


        push rdi                # apparemment cette fonction veut une
                                # case sur la pile (rdi ne sert aucune
                                # fonction ici)
        mov rdi,2               # cas special 2
        call r15
        pop rdi                 # case sur la pile


        ## votre stuff ici!
        mov r8, 2               # compteur

main_loop:

        cmp r8, r13
        jg end_main_loop

        push rcx
        mov rax, r8
        dec rax
        mov rdx, 0 # div in 64bit is made by rdx:rax / register
        mov rcx, 8 # the divisor
        div rcx
        pop rcx

        push rdi
        add rdi, rax
        mov rsi, rdx
        call _Z7get_bitPKcm
        pop rdi

        cmp rax, 1
        je increment

        cmp r8, 2
        je not_print

        push rdi
        push r8
        mov rdi, r8
        call r15
        pop r8
        pop rdi
not_print:
        mov r9, r8
	    add r9, r8
	
biffle_loop:

        cmp r9, r14
        jg increment

        push rcx
        mov rax, r9
        dec rax
        mov rdx, 0 # div in 64bit is made by rdx:rax / register
        mov rcx, 8 # the divisor
        div rcx
        pop rcx

        push rdi
        add rdi, rax
        mov rsi, rdx
        mov rdx, 1
        call _Z7set_bitPcmi
        pop rdi

increment_biffle:
	    add r9, r8
        jmp biffle_loop

increment:
        inc r8
        jmp main_loop

end_main_loop:
oui_loop:
        cmp r8, r14
        je true_ending

        push rcx
        mov rax, r8
        dec rax
        mov rdx, 0 # div in 64bit is made by rdx:rax / register
        mov rcx, 8 # the divisor
        div rcx
        pop rcx

        push rdi
        add rdi, rax
        mov rsi, rdx
        call _Z7get_bitPKcm
        pop rdi

        cmp rax, 1
        je inco

mark:
        push rdi
        push r8
        mov rdi, r8
        call r15
        pop r8
        pop rdi
inco:
        inc r8
        jmp oui_loop

true_ending:
        ret

        .cfi_endproc
.LFE1564:
        .size	_Z12eratosthenesPcmPFvmE, .-_Z12eratosthenesPcmPFvmE
        .section	.text.unlikely

        .ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
        .section	.note.GNU-stack,"",@progbits
