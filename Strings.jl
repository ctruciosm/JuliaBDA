#########################################
###           Strings                 ###
#########################################
# Autor: Carlos Trucios                 #
# https://ctruciosm.github.io           #
#########################################

# 1. Concatenate
nome = "Carlos"
sobrenome = "Trucios"

## Metodo 1
nome * sobrenome

## Metodo 2
join([nome, sobrenome], " ")

## Metodo 3
"$nome $sobrenome"

# 2. contains, startswith, endwith
julia_string = "Julia is an amazing open source programming language"

contains(julia_string, "Julia")
contains(julia_string, "julia")
startswith(julia_string, "Julia")
endswith(julia_string, "language")

# 3. 
lowercase(julia_string)
uppercase(julia_string)
titlecase(julia_string)
lowercasefirst(julia_string)
replace(julia_string, "amazing" => "awesome")
split(julia_string, " ")

my_number = 123
string(my_number)
typeof(string(my_number))

parse(Int64, "123")
typeof(parse(Int64, "123"))

tryparse(Int64, "cinco")