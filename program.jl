mutable struct Cell
    density::Float64
    velocity::Vector{Float64}
end

function next(grid)
    return grid
    
end

function diffusion(grid)
    return grid
end

function advection(grid)
    return grid
end

function init_grid(n,m)
    return init_grid(n, m, zeros(n, m), zeros(n, m))
end

function init_grid(n,m, dens, vel)
    grid = Matrix{Cell}(undef, n, m)
    for i in 1:n 
        for j in 1:m
            grid[i,j] = Cell(0, [dens[i,j], vel[i,j]])
        end
    end
    return grid
end

function main()
    n, m = 3, 3

    grid = init_grid(n, m)

    grid[2, 2].density = 3;

    show(stdout, "text/plain", grid)
end

main()