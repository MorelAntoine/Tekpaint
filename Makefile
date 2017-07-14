##
## Makefile for Makefile in /home/morel_j/Antoine/annee_1/semestre_1/infographie/Fil de fer 1/gfx_fdf1
## 
## Made by Antoine MOREL
## Login   <morel_j@epitech.net>
## 
## Started on  Sat Nov 21 12:52:33 2015 Antoine MOREL
## Last update Wed Dec  2 11:48:38 2015 Antoine MOREL
##

NAME		=	tekpaint

LIB		=	-L/home/${USER}/.froot/lib/ -llapin \
			-L/usr/local/lib \
			-lsfml-audio \
			-lsfml-graphics \
			-lsfml-window \
			-lsfml-system \
			-lstdc++ -ldl \
			-lm

CFLAGS		=	-W -Wall -Werror -ansi -pedantic -g -I/home/${USER}/.froot/include/

SRC		=	./src/main.c			\
			./src/core.c			\
			./src/tekpixel.c		\
			./src/tekline.c			\
			./src/tools.c			\
			./src/tekline_uns.c		\
			./src/bunny_free.c		\
			./src/load_bitmap.c		\
			./src/rectangular.c		\
			./src/save_bitmap.c		\
			./src/pot_peinture.c		\
			./src/save_file_ftn.c		\
			./src/my_strcmp.c		\
			./src/unload_file_ftn.c		\
			./src/parsing.c			\
			./src/sepia.c			\
			./src/shape_2.c			\
			./src/for_norme.c		\
			./src/main_next.c		\
			./src/main_one.c		\
			./src/main_two.c		\
			./src/main_three.c		\
			./src/core_next.c		\
			./src/core_more.c

OBJ		=	$(SRC:.c=.o)

all:		$(NAME)

$(NAME):	$(OBJ)
			gcc $(OBJ) $(LIB) -o $(NAME)
clean:
			rm -f $(OBJ)

fclean:		clean
			rm -f $(NAME)

re:		fclean all

