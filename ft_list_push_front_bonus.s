# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_list_push_front_bonus.s                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nikita <nikita@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/15 14:46:54 by nikita            #+#    #+#              #
#    Updated: 2021/01/15 15:05:37 by nikita           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
    extern malloc
    global ft_list_push_front

ft_list_push_front:
    push    rdi
    push    rsi
    mov     rdi, 16
    call    malloc
    pop     rsi
    pop     rdi
    cmp     rax, 0
    je      final
    mov     [rax], rsi
    mov     rcx, [rdi]
    mov     [rax + 8], rcx
    mov     [rdi], rax

final:
    ret
