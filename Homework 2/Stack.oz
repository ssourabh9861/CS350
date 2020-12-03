declare PopStack PushStack TopStack in

    fun {PushStack S X}
       X | S
    end

    fun {PopStack S}
       case S
       of _|T then T
       [] nil then {Error "Tried popping from an empty stack"}
       end
    end

    fun {TopStack S}
       case S
       of H|_ then H
       [] nil then nil
       end
    end

    


