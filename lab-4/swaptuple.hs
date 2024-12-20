swapTuple :: (a, b) -> (b, a)
swapTuple (a, b) = (b, a)

main :: IO ()
main = do
    print (swapTuple (1, "Hello"))  
    print (swapTuple ('a', 42))     

