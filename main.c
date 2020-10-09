#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <errno.h>


size_t		ft_strlen(const char *a);
//int			ft_strcmp(char const *s1, char const *s2);
//char		*ft_strcpy(const char *dst, const char *src);
//ssize_t		ft_write(int fd, void const *buf, size_t nbyte);
//ssize_t		ft_read(int fd, void *buf, size_t nbyte);
//char		*ft_strdup(char const *s1);


# define STRLEN(x)			printf("%s = %lu, mon strlen(mon strlen = %d)\n", x, ft_strlen(x), (int)strlen(x));
//# define STRCPY(d, s)		printf("%d, mon strcpy(%d)", strcpy(d, s), ft_strcpy(d, s));
//# define STRCMP(a, b)		printf("%s et %s = %d, mon strcmp (%d)\n", a, b, ft_strcmp(a, b), strcmp(a, b));
//# define WRITE(fd, s, x)	printf("^%ld (`%s`:%ld)\n", ft_write(fd, s, x), s, x);
//# define READ(fd, b, x)		printf("`%s`:%ld\n", b, x);
//# define STRDUP(s)			printf("`%s\n", ft_strdup(s), strdup(s));

int main ()
{

// Pour ft_strlen
const char *s = "hello";

// Pour ft_strcpy
//const char *dst = "42";
//const char *src = "ca va";

// Pour ft_strncmp
//char *s2 = "bonjour";
//char *s3 = "salut";

// Pour ft_write && ft_read
//int write_fd =  STDOUT_FILENO;
//int read_fd = STDIN_FILENO;
//const void *buf = NULL;
//size_t nbyte = 1;

// Pour ft_strdup
//const char *str = "bienvenue";


STRLEN(s);
//STRCPY (dst, src);
//STRCMP(s2, s3);
//WRITE (write_fd, buf, nbyte);
//READ (read_fd, buf, nbyte);
//STRDUP (str);

return(0);

}

