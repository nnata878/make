NAME : libft.a
SRC : ft_putchar.c ft_swap.c ft_putstr.c ft_strlen.c ft_strcmp.c
OBJS: ${SRC : .c = .o}
HEAD : ./includes/


CC : cc
RM : rm -f
FLAGS : -Wall -Wextra -Werror

%.o: %.c	
			${CC} ${CFLAGS} $< -o $@ -I ${INCDIR}
${NAME} : ${OBJS}
          ar rcs ${NAME} ${OBJS}
all : ${NAME}

clean : ${OBJS}

fclean :${NAME}


re : fclean all
.PHONY:		all clean fclean re