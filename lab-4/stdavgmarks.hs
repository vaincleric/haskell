
type Student = (String, Int, [Int])


averageMarks :: [Int] -> Double
averageMarks marks = if null marks then 0 else fromIntegral (sum marks) / fromIntegral (length marks)


displayStudentAverages :: [Student] -> IO ()
displayStudentAverages [] = return ()
displayStudentAverages ((name, _, marks):rest) = do
    let avg = averageMarks marks
    putStrLn (name ++ " - Average Marks: " ++ show avg)
    displayStudentAverages rest


students :: [Student]
students = [("Alice", 101, [85, 90, 78, 92]),
            ("Bob", 102, [88, 76, 94, 81]),
            ("Charlie", 103, [65, 70, 80, 72])]


main :: IO ()
main = displayStudentAverages students

