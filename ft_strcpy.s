# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nikita <nikita@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/13 18:01:40 by nikita            #+#    #+#              #
#    Updated: 2021/01/14 12:25:34 by nikita           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global ft_strcpy
	
ft_strcpy:
	mov		rcx, 0
	
while:
	mov bl, byte [rsi + rcx]
	cmp bl, 0
	je end
	mov byte [rdi + rcx], bl
	inc rcx
	jmp while
	
end:
	mov bl, 0
	mov byte [rdi + rcx], bl
	mov rax, rdi
	ret
