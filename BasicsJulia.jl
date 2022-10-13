#########################################
###         Comandos Básicos          ###
#########################################
# Autor: Carlos Trucios                 #
# https://ctruciosm.github.io           #
#########################################


# 1. Atribuição
x = 20
y = 8
nome = "Julia"
idade = 19
nomes  = ["Julia", "Lucas", "Pedro", "Carlos", "Maria", "Luisa", "Marcelo", "Camila"]
idades = [19, 20, 18, 22, 21, 19, 17, 23]
peso   = [65.5, 70.5, 65.2, 70.1, 65.1, 65.4, 65.3, 65.2]  
idades[2]
nomes[3]
matriz = [[1 2]
          [3 4]]


# 2. Operações Básicas
x + y               # Adição
x * y               # Multiplicação
x - y               # Subtração
x / y               # Divisão
x // y              # Divisão Inteira
x % y               # Resto da Divisão
x^y                 # Potência

# 3. Tipos de objetos
typeof(x)             
typeof(nomes)
typeof(idades)
typeof(peso)


# 4. Comparações Lógicas
x == y
x != y
x ≠ y
x > y
x <= y
true && false
true && true
false && false
true || false
true || true
false || false
6 isa Real
## Se está na duvida sobre os últimos 6 resultados
## veja as tabelas de verdade: https://www.todamateria.com.br/tabela-verdade/


# 5. Funções Básicas
prod(idades)        # Produto de todos os elementos em 'idades'
sum(idades)         # Soma de todos os elementos em 'idades'
cumsum(idades)      # Soma acumulada de todos os elementos em 'idades'
log(x)              # Logaritmo de x. Veja que log(idades) não funciona

# 6. Vectorização
log(idades)
log.(idades)
## . (dot) faz com que a mesma operação seja feita em todos os elementos do vetor
idades + 1    # Fails
idades .+ 1   # Works
idades


# 7. Pacotes ou Bibliotecas
using Pkg                      # Carrega o pacote Pkg
Pkg.add("Statistics")          # Instala o pacote Statistics
using Statistics               # Carrega o pacote Statistics 
mean(idades)
var(idades)
