        .file	"bits.cpp"
        .intel_syntax noprefix
        .text
        .p2align 4,,15
        .globl	_Z7set_bitPcmi
        .type	_Z7set_bitPcmi, @function
_Z7set_bitPcmi:
.LFB0:
        .cfi_startproc

        ## rdi ptr
        ## rsi offset
        ## rdx value (edx en fait, c'est un int!)

        push r8
        push r10

        mov rcx, rsi
        mov r8b, 1
        shl r8b, cl
        not r8b
        and byte ptr [rdi], r8b

        mov r10b, dl
        shl r10b, cl
        or byte ptr [rdi], r10b

        pop r10
        pop r8

        ret

        .cfi_endproc
.LFE0:
        .size	_Z7set_bitPcmi, .-_Z7set_bitPcmi
        .p2align 4,,15
        .globl	_Z7get_bitPKcm
        .type	_Z7get_bitPKcm, @function
_Z7get_bitPKcm:
.LFB1:
        .cfi_startproc

        ## rdi ptr
        ## rsi offset
        

        ## votre fonction ici
        
        ret                     # retour implicite dans eax

        .cfi_endproc
.LFE1:
        .size	_Z7get_bitPKcm, .-_Z7get_bitPKcm
        .ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
        .section	.note.GNU-stack,"",@progbits
