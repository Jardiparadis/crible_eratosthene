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


        ## votre fonction ici

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
