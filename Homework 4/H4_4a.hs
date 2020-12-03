main = do
    totSum <- sum 0
    print totSum

sum :: Int -> IO Int
sum prev = do 
    a<-getLine
    let n = (read a)::Int
    if n<0
        then return prev
        else sum (prev+n)