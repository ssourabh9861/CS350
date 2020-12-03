--Solution of Question 1
quickSort::(Ord a) => [a]->[a]
quickSort [] = []
quickSort (x:xs) = (quickSort [y|y<-xs, y<x]) ++ [x]++ (quickSort [y|y<-xs, y>=x])

--Solution of Question 2
uniq::(Eq a) => [a] -> [a]
uniq [] = []
uniq (x:xs) = x:(uniq [y|y<-xs, y/=x])

--Solution of Question 3
condition (x,y) = (x>=0) && (x<10) && (y>=0) && (y<10)
neighbours x y =  quickSort (filter condition [(t1,t2) | t1 <- [x-1, x, x+1], t2 <- [y-1, y, y+1]])


--Solution of Question 4
compute_words:: String -> Int
compute_words  x = foldl (+) 0 [(length (words y))| y<-(lines x)]

--Solution of Question 5
compose_multiple:: [t -> t] -> t -> t
compose_multiple [] a = a
compose_multiple [x] a = (x a)
compose_multiple (x:xs) a =  (x (compose_multiple xs a))

--Solution of Question 6a
data BinaryTree a = Nil | Node a (BinaryTree a) (BinaryTree a) deriving (Show, Read, Eq)  

--Solution of Question 6b
maptree :: (a->b) -> BinaryTree a ->BinaryTree b
maptree f Nil = Nil
maptree f (Node a l r) = Node (f a) (maptree f l) (maptree f r)

--Solution of Question 6c
foldTree :: (a -> b -> b -> b) -> b -> BinaryTree a -> b
foldTree f t Nil = t
foldTree f t (Node a t1 t2) = (f a) (foldTree f t t1) (foldTree f t t2)