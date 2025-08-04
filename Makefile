# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lmiguel- <lmiguel-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/04 16:08:54 by lmiguel-          #+#    #+#              #
#    Updated: 2023/10/26 16:04:47 by lmiguel-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 			= libftprintf.a

LIBFT 			= ./libft/libft.a

LIBFTDIR 		= ./libft

SRC 			= ft_print_hex.c ft_print_ptr.c ft_print_unsigned.c\
					ft_printf.c ft_putchar.c ft_putnbr.c ft_putstr.c

OBJECTS 		= $(SRC:.c=.o)

CC				= cc

AR				= ar rcs

RM				= rm -rf 

CFLAGS			= -Wall -Wextra -Werror

CP				= cp

all: 			$(NAME)

$(NAME): 		$(LIBFT) $(OBJECTS)
					$(CP) $(LIBFT) $(NAME)
					@$(AR) $(NAME) $(OBJECTS)

$(LIBFT): 		$(LIBFTDIR)
					@$(MAKE) -C $(LIBFTDIR)

%.o: 			$(SRC)/%.c
					@$(CC) $(CFLAGS) -c $< -o $@

clean:
				@$(MAKE) clean -C $(LIBFTDIR)
					rm -f *.o

fclean:	clean
				@$(MAKE) fclean -C $(LIBFTDIR)
					rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus
