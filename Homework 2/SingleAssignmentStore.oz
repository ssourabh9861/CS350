declare SAS BindValueToKeyInSAS BindRefToKeyInSAS AddKeyToSAS RetrieveFromSAS BindFuncToKeyInSAS in

SAS = {Dictionary.new}

fun {AddKeyToSAS}
   local Leng in 
      Leng = {List.length {Dictionary.keys SAS}}
      {Dictionary.put SAS Leng equivalence(Leng)}
      Leng
   end
end

proc {BindRefToKeyInSAS Key ReferenceKey}
   if Key \= ReferenceKey then
      {Dictionary.put SAS Key reference(ReferenceKey)}
   end
end


fun {RetrieveFromSAS Key}
   local TemporaryValue in
      TemporaryValue = {Dictionary.get SAS Key}  %if Key is not present in the SAS then raises an exception
      
      case TemporaryValue
      of reference(X) then
	    {RetrieveFromSAS X}
      else TemporaryValue
      end
   end
end



%the Key must exist in the SAS and the Key to be used in this procedure will be obtained through environment 

proc {BindValueToKeyInSAS Key Val}
   local CurVal IsProc in
      CurVal = {Dictionary.get SAS Key}
      IsProc = fun {$}
		  case CurVal
		  of proced|T then true
		  else false
		  end
	       end
      if {IsProc} orelse CurVal \= Val then 
	 case CurVal 
	 of equivalence(X) then {Dictionary.put SAS Key Val}
	 [] reference(X) then {BindValueToKeyInSAS X Val}
	 else raise alreadyAssigned(Key Val CurVal) end
	 end
      end
   end
end




