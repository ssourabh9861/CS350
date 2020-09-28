local Approximate Power Abs in
   fun lazy {Power X}
      X|{Power X*2.0}
   end
   fun {Abs X}
      if X>=0.0 then X
      else ~X
      end
   end
   
   fun {Approximate S Epsilon}
      if Epsilon >= {Abs (S.2.1 - S.1)} then S.1 + {Approximate S.2 Epsilon}
      else S.1
      end
   end
   
   {Browse {Approximate {Power 2.0} 20.0}}
end
