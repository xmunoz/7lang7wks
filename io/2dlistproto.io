TwoDList := Object clone

TwoDList dim := method(x, y,
    self x := x
    self y := y
    a := list()
    for(i, 1, y, 1,
        b := list()
        for(j, 1, x, 1,
            b append(nil)
        )
        a append(b)
    )
    self _a := a
)

TwoDList set := method(x, y, value,
    elemlist := self _a at(y) 
    elemlist atPut(x, value)
    self _a atPut(y, elemlist)
)

TwoDList get := method(x, y,
    self _a at(y) at(x)
)

TwoDList write := method(fname,
    f := File with(fname)
    f remove
    f openForUpdating
    for(i, 0, self y - 1, 1,
        b := list()
        for(j, 0, self x - 1, 1,
            value := self _a at(i) at(j)
            if (j != self x - 1, value = "#{value}, " interpolate, value = "#{value}" interpolate)
            f write(value)
        )
        f write("\n")
    )
    f close
)

TwoDList read := method(fname,
    f := File with(fname)
    f openForReading
    a = list()
    while(l := f readLine,
        vals := l split(", ")
        vals foreach (k, v,
            vals atPut(k, v asNumber)
        )
        a append(vals)
    )
    self _a := a
    self x := a at(0) size
    self y := a size
    self _a println
)

a := TwoDList clone
a dim(2, 3)
a set(0, 0, 2)
a set(0, 1, 9)
a set(1, 0, 6)
a set(1, 2, -3)
a get(0, 0) println
a get(1, 0) println
a get(1, 2) println
//a write("test.txt")
b := TwoDList clone
b read("test.txt")
