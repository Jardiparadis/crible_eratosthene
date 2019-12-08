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

        mov r8, 2 # bit counter

        #push rdi
        #push rsi
        #xor rdi, rdi
        #mov rdi, rsi
        #push r8
        #call _Z8int_sqrtm
        #pop r8
        #pop rsi
        #pop rdi
        mov r9, rsi # number of bytes

main_loop:

        # Check if all bits were checked
        cmp r8, r9
        je end

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

                inc r8
                cmp rax, 1
                        je main_loop
                dec r8
        push rdi
                push r8
                push r9
                push r10
                mov rdi, r8
                call r15
                pop r10
                pop r9
                pop r8
                pop rdi

        mov r10, r8
        inc r10

# set multiples to 1
sub_loop:
        cmp r10, r9
        jge sub_end


        # divide
                push rcx
                mov rax, r10
                mov rdx, 0 # div in 64bit is made by rdx:rax / register
                mov rcx, r8 # the divisor
                div rcx
                pop rcx


        add r10, 1 # TODO more increment

        cmp rdx, 0
        jne sub_loop

        # divide
                push rcx
                push r10
                dec r10
                mov rax, r10
                mov rdx, 0 # div in 64bit is made by rdx:rax / register
                mov rcx, 8 # the divisor
                div rcx
                pop r10
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



        jmp sub_loop

sub_end:
        inc r8
        jmp main_loop

end:
        pop rdx
        ret

        .cfi_endproc
.LFE1564:
        .size	_Z12eratosthenesPcmPFvmE, .-_Z12eratosthenesPcmPFvmE
        .section	.text.unlikely

        .ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
        .section	.note.GNU-stack,"",@progbits
