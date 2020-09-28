local FoldR Map Solve Double in
   fun {FoldR Xs BinOp Identity}
      case Xs
      of nil then Identity
      [] H|T then {BinOp H {FoldR T BinOp Identity}}
      end
   end
   fun {Solve F}
      fun{$ X Y}
	 {F X}|Y
      end
   end
   fun {Double X}
      2*X
   end
   fun {Map F Xs}
      {FoldR Xs {Solve F} nil}
   end
   {Browse {Map Double [1 2 3 4 5]}}
end
