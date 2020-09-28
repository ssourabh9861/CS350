local Series Sine in
   fun {Series X Total N Temp C}
      if C<1 then nil
      else  (Total / N)|{Series X (Total*X) N*(Temp+1.0)*(Temp+2.0) Temp+2.0 C-1}
      end
   end
   fun lazy {Sine X}
      {Series ~1.0*X*X X 1.0 1.0 10 }
   end
   
   {Browse  {Sine 1.0}} 
end
