using Plots

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

fractal = zeros(Int, width, height)

# Raíces esperadas
roots = [1+0im, 
         -0.5 + sqrt(3)/2*im, 
         -0.5 - sqrt(3)/2*im]

for i in 1:width
    for j in 1:height
        z = x[i] + y[j]*im

        for k in 1:max_iter
            z = z - f(z)/df(z)

            for (idx, r) in enumerate(roots)
                if abs(z - r) < tolerance
                    fractal[i, j] = idx
                    break
                end
            end
        end
    end
end

plt = heatmap(fractal, axis=false, color=:turbo)
savefig("newton_raphson_hilos.png")
