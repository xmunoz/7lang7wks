// iterative fibonacci
fib := method(elem,
    start := list(1, 1)
    if (elem <= 0, return "Error, input must be positive int.")
    if (elem < 3, 1) 
    for(i, 2, elem-1, 1,
        start append(start at(i-1) + start at(i-2))
    )
    start at(elem-1)
)

// recursive fibonacci
fibRec := method(elem,
    if (elem <= 0, return "Error, input must be a positive int.")
    if (elem <=2 ,
        1,
        fibRec(elem - 1) + fibRec(elem - 2)
    )
)

fibRec(0) println
fib(0) println
fib(1) println
fib(2) println
fib(3) println
fib(4) println
fib(5) println
fib(6) println
fibRec(7) println
