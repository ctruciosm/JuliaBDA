#########################################
##  Importing Data and Data Wrangling  ##
#########################################
# Autor: Carlos Trucios                 #
# https://ctruciosm.github.io           #
#########################################
# Material de apoio para meus alunos de #
# MAD211 e ACA228 FACC/UFRJ             #
#########################################

#  Instalando pacotes
using Pkg                   # Pacote para instalar pacotes
Pkg.add("DataFrames")
Pkg.add("CSV")
Pkg.add("DelimitedFiles")


# Carregando pacotes
using DataFrames
using CSV
using DelimitedFiles


# Importar dados
## csv separado por virgula
path = "/media/ctruciosm/46CE33E1CE33C847/Carlos/ctruciosm.github.io/datasets/insurance.csv"
insurance = CSV.read(path, DataFrame)

## csv separado por ponto e virgula
path = "/media/ctruciosm/46CE33E1CE33C847/Carlos/ctruciosm.github.io/datasets/propellant.csv"
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
