main = do
    totSum <- find 0
    print totSum

find :: Int -> IO Int
find prev = do 
    a<-getLine
    let n = (read a)::Int
    if n<0
        then return prev
        else find (prev+n)