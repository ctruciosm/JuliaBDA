#########################################
##  Importing Data and Data Wrangling  ##
#########################################
# Autor: Carlos Trucios                 #
# https://ctruciosm.github.io           #
#########################################


#  Instalando pacotes
using Pkg                   # Pacote para instalar pacotes
Pkg.add("DataFrames")
Pkg.add("CSV")
Pkg.add("DelimitedFiles")
Pkg.add("CategoricalArrays")

# Carregando pacotes
using DataFrames
using CSV
using DelimitedFiles
using CategoricalArrays

# Importar dados
## csv separado por virgula
path = "/Users/ctruciosm/Dropbox/ctruciosm.github.io/datasets/insurance.csv"
insurance = CSV.read(path, DataFrame)

## csv separado por ponto e virgula
path = "/Users/ctruciosm/Dropbox/ctruciosm.github.io/datasets/propellant.csv"
propellant = CSV.read(path, DataFrame, delim = ';')



# Filter: para filtrar dados
## Apenas females
filter(row -> row.sex == "female", insurance)                   # metodo 1
insurance[insurance.sex .== "female", :]                        # metodo 2
subset(insurance, :sex => ByRow(==("female")))                  # metodo 3

## Apenas bmi > 20
filter(row -> row.bmi > 20, insurance)                          # metodo 1
insurance[insurance.bmi .> 20, :]                               # metodo 2
subset(insurance, :bmi => ByRow(>(20)))                         # metodo 3
## Casos com region diferente de "southwest"
filter(row -> row.region != "southwest", insurance)             # metodo 1
insurance[insurance.region .!= "southwest", :]                  # metodo 2
subset(insurance, :region => ByRow(!=("southwest")))            # metodo 3


# Select: para seleciocar colunas
## selecionar apenas as variaveis sex e bmi
select(insurance, :sex, :bmi)                                   # metodo 1
select(insurance, "sex", "bmi")                                 # metodo 2

# selecionar todas as variavies exceto sex
select(insurance, Not(:sex))

# selecionar todas as variavies exceto sex e bmi
select(insurance, Not([:sex, :bmi]))

# Variáveis ordinais
## Creamos um dataset
dados_test = DataFrame(
                id = 1:4, 
                date = ["28-01-2018", "03-04-2019", "01-08-2018", "22-11-2020"], 
                age = ["adolescent", "adult", "infant", "adult"])

## Precisamos converter date para Dates (pois não é string)
## parei na 4.5 do livro
