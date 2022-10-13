#########################################
###   Funções, Condicionais e Loops   ###
#########################################
# Autor: Carlos Trucios                 #
# https://ctruciosm.github.io           #
#########################################


# 1 Criando Funções
function media(vetor_de_dados) 
    calcular_media = sum(vetor_de_dados) / length(vetor_de_dados)
    return calcular_media
end
media(idades)

# 2. Condicionais (IF, ELSE, ELSEIF)
x = 32
y = 32.0
if x < y
    print("x é menor que y")
else
    print("x é maior ou igual do que y")
end

if x < y
    print("x é menor que y")
elseif x > y
    print("x é maior que y")
else
    print("x é igual a y")
end

function comparar_dois_numeros(a, b)
    if a < b
        print("a é menor que b")
    elseif a > b
        print("a é maior que b")
    else
        print("a é igual a b")
    end
end
comparar_dois_numeros(25, 32)
comparar_dois_numeros(32, 32)

function comparar_dois_numeros2(a, b)
    if a < b
        print("$a é menor que $b")
    elseif a > b
        print("$a é maior que $b")
    else
        print("$a é igual a $b")
    end
end
comparar_dois_numeros2(25, 32)
comparar_dois_numeros2(32, 32)

# 3. For Loop
for i in 1:10
    println(i)   # Veja o que acontece de utilizar print() em lugar de println()
end
## Fatorial de um número
function fatorial(n)
    p = 1  
    for i in 1:n
        p = p * i
    end
    return p
end
fatorial(5)
5*4*3*2*1
fatorial(8)
8*7*6*5*4*3*2*1

# 4. While Loop
n = 10
while n < 20
    println(n)
    global n = n + 1
end
## Repare que no exemplo do fatorial não precisamos 
## definir a variável global, pois estava dentro de uma função  

# 5. Função com vários outputs
function operacoes_basicas(a, b)
    soma = a + b
    substracao = a - b
    multiplicacao = a * b
    divisao = a / b
    return soma, substracao, multiplicacao, divisao
end

operacoes_basicas(50, 2)
s, r, m, d = operacoes_basicas(50, 2)
s
r
m
d

all_operations = operacoes_basicas(50, 2)
all_operations

# 6. Funções anonimas
map(x -> 2.7182818284590^x, log(2))

# 7. Funções com Bang

function add_two!(V)
    for i in 1:length(V)
        V[i] += 2
    end
    return nothing
end

V = [2, 3, 4]
add_two!(V)
V