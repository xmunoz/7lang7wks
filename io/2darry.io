a := list(list(1, 1, 8, -2, 9), list(2, 5, -4, 1))

addUp := method(arr,
    total := 0
    for (i, 0, arr size - 1, 1, total = total + arr at(i) sum)
)

b := list(1, 2, "3")
b myAverage := method(
    avg := 0
    e := try(
        avg = self average
    )
    if (e == nil, avg, nil)
)

addUp(a) println
b myAverage println
