local IsDiagonal Zeros Check in
   fun {Zeros X N}
      case X
      of nil then true
      [] H|T then
	 if N==1 then {Zeros T N-1}
	 else if H==0 then {Zeros T N-1}
	      else false
	      end
	 end
      end
   end
   
   fun {Check M N}
      case M
      of nil then true
      [] H|T then {Zeros H N} andthen {Check T N+1}
      end
   end
   
   fun {IsDiagonal M}
      {Check M 1}
   end
   {Browse {IsDiagonal [ [1 0 0] [0 1 2] [0 0 1] ]}}
end

   