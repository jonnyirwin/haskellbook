module Ch03 where

import System.IO (hWaitForInput)

-- main:: IO ()
-- main = do
--     putStr "so... to start, it is obligatory to say: "
--     putStrLn "hello world!"

myGreeting :: String
myGreeting = "hello" ++ " world!"

hello :: String
hello = "hello"

world :: String
world = "world!"

main :: IO ()
main = do
    putStrLn myGreeting
    putStrLn secondGreeting
  where
    secondGreeting =
        concat [hello, " ", world]

-- Exercises: Scope

-- 1.
x = 5
y = 7
z = x * y

--y is in scope for z

-- 2.
f = 3

-- g = 6 * f + h
--h is not in scope for g

-- 3.
--area d = pi * (r * r)
--r = d / 2
-- d is not in scope (local to the area function)

-- 4.
area d = pi * (r * r)
  where
    r = d / 2

-- r and d are in scope for area

-- Exercises: Syntax errors

-- 1.
-- ++ [1,2,3] [4,5,6]
c = (++) [1, 2, 3] [4, 5, 6]

-- 2.
-- '<3' ++ ' Haskell'
d = "<3" ++ " Haskell"

-- 3.
e = concat ["<3", " Haskell"]

-- Chapter exercises

-- 1.

-- a) correct
a' = concat [[1, 2, 3], [4, 5, 6]]

-- b) incorrect
-- a' = ++ [1,2,3] [4,5,6]
b' = (++) [1, 2, 3] [4, 5, 6]

-- c. correct
c' = (++) "hello" " world"

-- d) correct
d' = ["hello" ++ " world"]

-- e) incorrect
-- e' = 4 !! "hello"
e' = "hello" !! 4

-- f) correct
f' = (!!) "hello" 4

-- g) incorrect
-- g' = take "4 lovely"
g' = take 4 "lovely"

-- h) correct
h' = take 3 "awesome"

-- 2.

-- a)
twoA = concat [[1 * 6], [2 * 6], [3 * 6]]

-- [6, 12, 18]

-- b)
twoB = "rain" ++ drop 2 "elbow"

-- "rainbow"

-- c)
twoC = 10 * head [1, 2, 3]

-- 10

-- d)
twoD = (take 3 "Julie") ++ (tail "yes")

-- "Jules"

-- e)
twoE =
    concat
        [ tail [1, 2, 3]
        , tail [4, 5, 6]
        , tail [7, 8, 9]
        ]

-- [2,3,5,6,8,9]

-- Building functions

--1
-- a)
excitify = (++ "!")

-- b)
fifthLetter = (!! 4)

-- c)
nukeNine = drop 9

-- 2) See above

-- 3)
thirdLetter :: String -> Char 
thirdLetter = (!! 2)

-- 4)
letterIndex :: Int -> Char 
letterIndex = (!!) "Curry is awesome!"

-- 5)
rvrs a = drop 9 a ++ take 4 (drop 5 a) ++ take 5 a