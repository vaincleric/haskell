reverseList :: [a] -> [a]
reverseList [] = []  
reverseList (x:xs) = reverseList xs ++ [x]  

main :: IO ()
main = do
    print (reverseList [1, 2, 3])  
    print (reverseList [10, 20, 30, 40])  
    print (reverseList ["apple", "banana", "cherry"])  
      

