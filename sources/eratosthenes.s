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

        
        #push rdi                # apparemment cette fonction veut une
                                # case sur la pile (rdi ne sert aucune
                                # fonction ici)
        #mov rdi,2               # cas special 2
        #call r15
        #pop rdi                 # case sur la pile

        ////

        push rdx

        mov r8, 1 # bit counter

        push rdi
        xor rdi, rdi
        mov rdi, rsi
        push r8
        call _Z8int_sqrtm
        pop r8
        pop rdi
        mov r9, rax # number of bytes

main_loop:

        push r8
        cmp r8, r9
        je end
        pop r8

        # divide
        push rcx
        mov rax, r8
        mov rdx, 0 # div in 64bit is made by rdx:rax / register
        mov rcx, 8 # the divisor
        div rcx
        pop rcx


        push rdi
        push rsi

        add rdi, rax
        mov rsi, rdx

        call _Z7get_bitPKcm

        pop rsi
        pop rdi

        cmp rax, 1
        je main_loop


        push rdi
        push r8
        add r8, 1
        mov rdi, r8
        call r15
        pop r8
        pop rdi

        push r10

        mov r10, r8 # x is r10

sub_loop:

        cmp r10, r9
        je sub_end

        # divide
        push rcx
        mov rax, r10
        mov rdx, 0 # div in 64bit is made by rdx:rax / register
        mov rcx, 8 # the divisor
        div rcx
        pop rcx

        push rdi
        push rsi
        push rdx

        add rdi, rax
        mov rsi, rdx
        mov rdx, 1
        call _Z7set_bitPcmi

        pop rdx
        pop rsi
        pop rdi

        inc r10
        jmp sub_loop
        call r8 # breakpoint

sub_end:
        pop r10
        inc r8
        jmp main_loop
        ## votre stuff ici!
end:
        pop rdx
        ret

        .cfi_endproc
.LFE1564:
        .size	_Z12eratosthenesPcmPFvmE, .-_Z12eratosthenesPcmPFvmE
        .section	.text.unlikely

        .ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
        .section	.note.GNU-stack,"",@progbits
