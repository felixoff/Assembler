# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nikita <nikita@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/01/14 12:22:42 by nikita            #+#    #+#              #
#    Updated: 2021/01/14 12:58:11 by nikita           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=libasm.a

SRC=ft_write.s \
	ft_read.s \
	ft_strlen.s \
	ft_strcmp.s \
	ft_strcpy.s \
	ft_strdup.s

BONUS_SRC=ft_list_size_bonus.s \
		ft_list_push_front_bonus.s

OBJ=$(SRC:.s=.o)
BONUS_OBJ = $(BONUS_SRC:.s=.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

bonus: $(OBJ) $(BONUS_OBJ)
			ar rc $(NAME) $(OBJ) $(BONUS_OBJ)

%.o: %.s
	nasm -f elf64 -o $@ $<

clean:
	rm -f $(OBJ)
	rm -f $(BONUS_OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
