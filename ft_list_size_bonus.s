# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_list_size_bonus.s                               :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nikita <nikita@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/15 14:46:40 by nikita            #+#    #+#              #
#    Updated: 2021/01/15 14:46:45 by nikita           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
    global ft_list_size

ft_list_size:
    mov     rax, 0

loop:
    cmp     rdi, 0
    je      final
    mov     rdi, [rdi + 8]
    inc     rax
    jmp     loop

final:
    ret
