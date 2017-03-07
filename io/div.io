(4/0) println
origDiv := Number getSlot("/")
Number / := method(i, if (i == 0, 0, self origDiv(i)))
(4/0) println


