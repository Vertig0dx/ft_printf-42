/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lmiguel- <lmiguel-@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/24 17:05:41 by lmiguel-          #+#    #+#             */
/*   Updated: 2023/11/09 12:57:49 by lmiguel-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "./libft/libft.h"
# include <stdarg.h>
# include <unistd.h>

//int
int		ft_print_hex(unsigned int n, const char type);
int		ft_print_ptr(unsigned long long ptr);
int		ft_print_unsigned(unsigned int n);
int		ft_printf(const char *input, ...);
int		ft_putchar(char c);
int		ft_putnbr(int n);
int		ft_putstr(char *str);

#endif