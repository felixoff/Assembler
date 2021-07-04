# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nikita <nikita@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/13 18:00:08 by nikita            #+#    #+#              #
#    Updated: 2021/01/13 18:24:42 by nikita           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
    global ft_strcmp

ft_strcmp:
    mov     rax, 0
    mov     rcx, 0

loop:
    mov     al, byte[rdi]
    mov     bl, byte[rsi]
    cmp     al, 0
    je      final
    cmp     bl, 0
    je      final
    cmp     al, bl
    jne     final
    inc     rsi
    inc     rdi
    jmp     loop

final:
    movzx   rax, al
    movzx   rcx, bl
    sub     rax, rcx
    ret
    
