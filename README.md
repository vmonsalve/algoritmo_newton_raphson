# Julia fractal lab

> Exploración de fractales, usuando julia.
> Dinámica compleja, caos, sistemas iterativos desde cero.

## Descripción.

Esto que estoy dejando acá es un laboratorio personal donde estaré explorando la generación de fractales mediante algoritmos matemáticos implementados en julia.

Mi intención con esto es lograr comprender:

- Números complejos
- Métodos numéricos
- Sistemas dinámicos
- Caos determinista
- Iteración y convergencia

## Fractales implementados.

- Nombre: Newton Rapshon
- Idea: Cada punto del plano converge a una raiz distinta.

```math
z_{n+1} = z_n - \frac{f(z_n)}{f'(z_n)}
```
**Resultado**

![Fractal Newton Raphson](imagenes/newton_raphson.png "Fractal newton raphson")

---

- Nombre: Mandelbrot Set
- Idea: determinar si una secuencia diverge o no

```math
z_{n+1} = z_n^2 + c
```

**Resulado**

![Fractal Mandelbrot](imagenes/mandelbrot.png "Fractal Mandelbrot")

## Conceptos aplicados.

- Iteración
- Convergencia / divergencia
- Derivadas
- Plano complejo
- Sensibilidad a condiciones iniciales
- Fronteras caóticas


## Stack

```text
julia version 1.12.6
Plots v1.41.6
```

Para ejecutar los algoritmos debe ser de la siguiente manera.

```bash
julia algoritmo.jl
```
