declare
fun {Merge X1 X2}
   case X1#X2
   of nil#X2 then X2
   [] X1#nil then X1
   [] (H1|T1) # (H2|T2) then
      if H1<H2 then H1|{Merge T1 X2}
      else H2|{Merge X1 T2}
      end
   end
end

{Browse {Merge [2 5 6 8] [1 3 4 7 10]}}
      
   