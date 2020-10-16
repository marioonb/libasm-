#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>
#include <errno.h>


extern size_t		ft_strlen(const char *a);
extern int			ft_strcmp(char const *s1, char const *s2);
extern char			*ft_strcpy(char *dst, char *src);
extern size_t		ft_write(int fd, void const *buf, size_t nbyte);
extern size_t		ft_read(int fd, void *buf, size_t nbyte);
char				*ft_strdup(char const *s1);


#define STRLEN(x)			printf("[%s] = (%d), mon strlen = (%d)\n\n", x, (int)strlen(x), (int)ft_strlen(x));
#define STRCPY(d, s)		printf("la dest [%s]", d); printf(" et la source [%s] copie dans dest = (%s), mon strcpy renvoi (%s)\n\n", s, strcpy(d, s), ft_strcpy(d, s));
#define STRCMP(a, b)		printf("[%s] et [%s] = (%d), mon strcmp (%d)\n\n", a, b, strcmp(a, b), ft_strcmp(a, b));
#define STRDUP(s)			printf("stdup renvoi (%s), mon strdup renvoi (%s)\n\n", strdup(s), ft_strdup(s));

int main ()
{
// Pour ft_strlen
	printf("****STRLEN****\n");
	const char *s = "hello";
	STRLEN(s);

// Pour ft_strcpy
	printf("****STRLCPY****\n");
	char dst[10] = "salut"; 
	char src[10] = "42";
	STRCPY (dst, src);

// Pour ft_strcmp
	printf("****STRCMP****\n");
	char *s2 = "hello";
	char *s3 = "salut";
	STRCMP(s2, s3);

// Pour ft_write
	printf("****WRITE****\n");
	int fd = open("test_write.txt", O_WRONLY);
	//int fd = 1; 
	char *s4 = "salut\n";
	int x = strlen(s);

	printf("\twrite doit renvoyer %d\n", (int)write(fd, s4, x)); 
	printf("\tmon ft_write renvoi %d\n\n", (int)ft_write(fd, s4, x));

// Pour ft_read	
	printf("****READ****\n");
	int fd2 = open("test_read.txt", O_RDONLY);
	char buf[11];
	
	printf("\nread renvoi %d\n", (int)read(fd2, buf, 11));
	printf ("le buffer = %s\n", buf);
	close (fd2); 

	fd2 = open("test_read.txt", O_RDONLY); 
	printf("\nft_read renvoi %d\n", (int)ft_read(fd2, buf, 11));
	printf ("le buffer = %s\n\n", buf);
	
	// Pour ft_strdup
	printf("****STRDUP****\n");
	const char *str = "bienvenue";
	STRDUP (str);

  	return(0);
}

