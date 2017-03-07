Builder := Object clone
Builder forward := method(
    write("<", call message name, ">")
    call message arguments foreach(
        arg,
        content := self doMessage(arg);
        if(content type == "Sequence", write(content))
    )
    writeln("</", call message name, ">")
)

OperatorTable addAssignOperator(":", "atPutNumber")

curlyBrackets := method(
    r := Map clone
    call message arguments foreach(arg,
       r doMessage(arg)
    )
    r
)

Map atPutNumber := method(
    self atPut(
        call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""), call evalArgAt(1)
    )
)



Builder ul({"author": "Tate"}
    li("Io"),
    li("Lua"),
    li("JavaScript")
)

Object squareBrackets := Object getSlot("list")

a := [1, 2, 3] 

a println
a type
