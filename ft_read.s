# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nikita <nikita@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/13 11:55:05 by nikita            #+#    #+#              #
#    Updated: 2021/01/13 18:01:50 by nikita           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

	section .text
	global ft_read
	extern __errno_location

ft_read:
	mov rax, 0
	syscall
	cmp rax, 0
	jl error
	ret

error:
	neg rax
	mov rdx, rax
	call __errno_location
	mov [rax], rdx
	mov rax, -1
	ret
