local Approximate Power in
   fun lazy {Power X}
      X|{Power X*2.0}
   end
   
   fun {Approximate S Epsilon}
      if Epsilon >= (S.2.1 - S.1) then S.1 + {Approximate S.2 Epsilon}
      else S.1
      end
   end
   
   {Browse {Approximate {Power 2.0} 20.0}}
end
