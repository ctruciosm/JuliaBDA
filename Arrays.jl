#########################################
###   Arrays: Vectors and Matrices    ###
#########################################
# Autor: Carlos Trucios                 #
# https://ctruciosm.github.io           #
#########################################

Vector{Float64}(undef, 10)
Matrix{Float64}(undef, 10, 2)

zeros(10)
zeros(Int64, 10, 2)
ones(10)
ones(10, 2)

my_matrix_π = Matrix{Float64}(undef, 2, 2)
fill!(my_matrix_π, 3.14)


[[1 2]
[3 4]]

[[1 2]; [3 4]]

[[1 2] [3 4]]


Bool[0, 1, 0, 1]

[ones(Int, 2, 2) zeros(Int, 2, 2)]

[x^2 for x in 1:10]

[x∗y for x in 1:10 for y in 1:2]

[x^2 for x in 1:10 if isodd(x)]

Float64[x^2 for x in 1:10 if isodd(x)]

eltype(my_matrix_π)

length(my_matrix_π)

ndims(my_matrix_π)

size(my_matrix_π)

size(my_matrix_π, 1)

size(my_matrix_π, 2)

root = dirname(@__FILE__)

joinpath(root, "Arrays.jl")