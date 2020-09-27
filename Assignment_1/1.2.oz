declare 
fun {Length X}
   case X
   of nil
   then 0
   [] H|T then 1+{Length T}
   end
end
fun {Take X N}
   if N<1
   then X
   else
      case X
      of nil
      then nil
      [] H|T then {Take T N-1}
      end
   end
end
fun {Last Xs N}
   if N<1
   then nil
   else {Take Xs {Length Xs}-N}
   end
end
{Browse {Last [1 2 3 4 5 6 7 8] 8}}