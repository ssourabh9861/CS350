local FoldL Product in
   fun {FoldL Xs BinOp Identity}
      case Xs
      of nil then Identity
      [] H|T then {FoldL T BinOp {BinOp H Identity}}
      end
   end
   fun {Product X Y}
      X*Y
   end
   {Browse {FoldL [1 2 3 4 5] Product 1}}
end

   