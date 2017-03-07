Animal := Object clone do (
    legs ::= nil    // creates leg slot  & setLegs() setter
    tail ::= nil    // creates tail slot & setTail() setter
)

Cat := Animal clone setLegs(4) setTail(1)
mutantdog := Animal clone setLegs(5) setTail(3)

"Cat prot and slotnames" println
Cat proto println
Cat slotNames println

"mutant dog proto and slotnames" println
mutantdog proto println
mutantdog slotNames println

slotCaller := method(obj, slotN,
    obj getSlot(slotN) println
)

slotCaller(Cat, "tail")
