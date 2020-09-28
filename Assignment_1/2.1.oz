declare
fun {ZipWith BinOp Xs Ys}
   case Xs#Ys
   of nil # Ys then nil
   [] Xs # nil then nil
   [] nil # nil then nil
   [] (H1|T1) # (H2|T2) then {BinOp H1 H2}|{ZipWith BinOp T1 T2}
   end
end
fun {Product X Y}
   X*Y
end
{Browse {ZipWith Product [2 4 5 6 7] [1 0 1 0 1]}}