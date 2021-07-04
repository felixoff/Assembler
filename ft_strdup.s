# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nikita <nikita@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/13 18:01:34 by nikita            #+#    #+#              #
#    Updated: 2021/01/14 12:18:53 by nikita           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global ft_strdup
	extern ft_strlen
	extern ft_strcpy
	extern malloc

ft_strdup:
	push rdi
	call ft_strlen
	mov rdi, rax
	inc rdi
	call malloc
	cmp rax, 0
	je end
	mov rdi, rax
	pop rsi
	call ft_strcpy
end:
	ret
