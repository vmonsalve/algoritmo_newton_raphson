using Plots
gr()
using Base.Threads

# Función y derivada
f(z) = z^3 - 1
df(z) = 3z^2

# Parámetros
width, height = 800, 800
max_iter = 30
tolerance = 1e-6

# Plano complejo
x = range(-2, 2, length=width)
y = range(-2, 2, length=height)

# Resultado
fractal = Matrix{Int}(undef, width, height)

# Raíces
roots = [
    1 + 0im,
    -0.5 + sqrt(3)/2*im,
    -0.5 - sqrt(3)/2*im
]

# Función que clasifica un punto
function classify(z0)
    z = z0
    for k in 1:max_iter
        z -= f(z)/df(z)

        @inbounds for (idx, r) in enumerate(roots)
            if abs(z - r) < tolerance
                return idx
            end
        end
    end
    return 0
end

# Loop paralelo
@threads for i in 1:width
    @inbounds for j in 1:height
        z0 = x[i] + y[j]*im
        fractal[i, j] = classify(z0)
    end
end

# Visualización
plt = heatmap(fractal, axis=false, color=:turbo)
savefig("../imagenes/newton_raphson_hilos.png")