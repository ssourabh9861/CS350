declare
fun {Take Xs N}
   if N<1
   then nil
   else
      case Xs
      of nil
      then nil
      [] H|T then H|{Take T N-1}
      end
   end
end

{Browse {Take [1 2 3 4 5 6 7 8 9] 20}}