using Plots
gr()

function sierpinski()
    A = (0.0, 0.0)
    B = (1.0, 0.0)
    C = (0.5, sqrt(3)/2)

    vertices = [A, B, C]

    x, y = 0.25, 0.25
    n = 50_000

    xs = Float64[]
    ys = Float64[]

    for i in 1:n
        v = vertices[rand(1:3)]

        x = (x + v[1]) / 2
        y = (y + v[2]) / 2

        push!(xs, x)
        push!(ys, y)
    end

    plt = scatter(xs, ys, markersize=1, legend=false)
    savefig(plt, "../imagenes/sierpinski.png")
end

sierpinski()