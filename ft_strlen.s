# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlsen.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nikita <nikita@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/13 18:01:25 by nikita            #+#    #+#              #
#    Updated: 2021/01/13 18:01:27 by nikita           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
    global ft_strlen

ft_strlen:
    mov rax, 0

loop:
    cmp byte[rdi+rax], 0
    je  ret
    inc rax
    jmp loop

ret:
    ret