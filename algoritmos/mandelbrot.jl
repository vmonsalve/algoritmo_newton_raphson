using Plots
gr()

width, height = 800, 800
max_iter = 100

x = range(-2, 1, length=width)
y = range(-1.5, 1.5, length=height)

fractal = zeros(Int, width, height)

for i in 1:width
    for j in 1:height
        c = x[i] + y[j]*im
        z = 0 + 0im

        iter = 0
        while abs(z) <= 2 && iter < max_iter
            z = z^2 + c
            iter += 1
        end

        fractal[i, j] = iter
    end
end

plt = heatmap(fractal, axis=false, color=:turbo)
savefig("mandelbrot.png")
display(plt)