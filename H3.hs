--Solution of Question 1
quickSort::(Ord a) => [a]->[a]
quickSort [] = []
quickSort (x:xs) = (quickSort [y|y<-xs, y<=x]) ++ [x]++ (quickSort [y|y<-xs, y>x])

--Solution of Question 2
uniq::(Ord a) => [a] -> [a]
uniq [] = []
uniq (x:xs) = x:(uniq [y|y<-xs, y/=x])

--Solution of Question 3
-- neighbors :: (Ord a, Num a) => a -> a -> [(a,a)]
change_val = [(x,y)|x<-[-1,1,0], y<-[-1,1,0], x/=0 || y/=0]
condition (x,y) = (x>=0) && (x<10) && (y>=0) && (y<10)
neighbors x y = quickSort (filter condition [(a+x, b+y)|(a,b)<-change_val])

--Solution of Question 4
compose_multiple:: [t -> t] -> t -> t
compose_multiple [x] a = (x a)
compose_multiple (x:xs) a =  (x (compose_multiple xs a))

--Solution of Question 5
compute_words:: String -> Int
compute_words  x = foldl (+) 0 [(length (words y))| y<-(lines x)]

--Solution of Question 6a
data BinaryTree a = Nil | Node a (BinaryTree a) (BinaryTree a) deriving (Show, Read, Eq)  

--Solution of Question 6b
maptree :: (a->b) -> BinaryTree a ->BinaryTree b
maptree f Nil = Nil
maptree f (Node a l r) = Node (f a) (maptree f l) (maptree f r)


