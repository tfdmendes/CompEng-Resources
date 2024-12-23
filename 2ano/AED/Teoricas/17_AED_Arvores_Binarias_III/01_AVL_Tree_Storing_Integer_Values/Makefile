EXECUTABLE = 01_example
CC = clang

# -Wall: ativa todos os warnings de compilação
# - std=c17 versão padrão de C
CFLAGS=-Wall -std=c17

# Library "-lm" indica a library de matemática (math.h)
LIBS=-lm

# Usa a função wildcard para localizar todos os ficheiros C do diretório atual e armazene-nos na variável src
# Assim, todos os arquivos de codigo c no diretorio vao ser incluidos automaticamente
src = $(wildcard *.c)
obj = $(src:.c=.o)

all: prog

prog: $(obj)
	$(CC) -o $(EXECUTABLE) $^ $(LIBS)

.PHONY: clean
clean:
	rm $(obj) $(EXECUTABLE)