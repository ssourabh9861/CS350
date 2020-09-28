local Series Sine in
   fun {Series X Total N Temp}
      (Total / N)|{Series X (Total*X) N*(Temp+1.0)*(Temp+2.0) Temp+2.0}
   end
   fun lazy {Sine X}
      {Series ~1.0*X*X X 1.0 1.0}
   end
   {Browse  {Sine 1.0}} 
end
