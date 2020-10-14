NAME = libasm.a
SRCS = ft_strlen.s \
ft_strdup.s \
ft_strcpy.s \
ft_strcmp.s \
ft_write.s \
ft_read.s \

OBJS = $(SRCS:.s=.o)

NA = nasm
NA_FLAGS = -f elf64
FLAGS = -Wall -Werror -Wextra
NAME = libasm.a
TEST = test

%.o: %.s
	$(NA) $(NA_FLAGS) $<

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

clean:
	rm -rf $(OBJS) 

fclean: clean
	rm -rf $(NAME) $(TEST) 
	rm a.out

re: fclean $(NAME)

test: $(NAME)
	gcc -no-pie $(FLAGS) main.c $(NAME)
	./a.out


