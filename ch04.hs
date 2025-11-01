module Ch04 where
import Distribution.Types.ForeignLib (libVersionMajor)
import qualified Data.ByteString as List

-- Exercises: Mood swing

data Mood = Blah | Woot deriving Show

-- 1) type constructor: Mood
-- 2) Can use values Blah or Woot

-- 3)
-- changeMood :: Mood -> Mood
-- changeMood x = 
--     case x of
--         Blah -> Woot
--         Woot -> Blah

changeMood :: Mood -> Mood
changeMood Blah = Woot
changeMood Woot = Blah

-- Exercises: Find the mistakes

-- 1) not True && True
-- 2) not (x == 6)
-- 3) (1 * 2) > 3
-- 4) ["Merry"] > ["Happy"]
-- 5)  ['1', '2', '3'] ++ "look at me!"

-- Chapter exercises

-- 1)
length' :: [a] -> Int
length' = length 

-- 2)
-- a)
-- length [1, 2, 3, 4, 5]
-- 5

-- b)
-- length [(1, 2), (2, 3), (3, 4)]
-- 3

awesome = ["Papuchon", "curry", ":)"]
also = ["Quake", "The Simons"]
allAwesome = [awesome, also]

-- c)
-- length allAwesome
-- 2

-- d)
-- length (concat allAwesome)
-- 5

-- 3)
-- 6 / 3
-- and
-- 6 / length [1, 2, 3]
-- Second one fails as length returns an Int, which is not Fractional as required by (/)

-- 4)
fixedDiv = 6 `div` length [1,2,3]

-- 5)
five :: Bool
five = 2 + 3 == 5
-- True

-- 6)
-- a)
x :: Integer
x = 5

-- b)
fiveB :: Bool
fiveB = x + 3 == 5

-- 7)
-- a)
-- length allAwesome == 2
-- True

-- b)
-- length [1, 'a', 3, 'b'] -- error
-- length [(1, 'a'), (3, 'b')]
-- 2

-- c)
-- length allAwesome + length awesome
-- 2

-- d)
-- (8 == 8) && ('b' < 'a')
-- False

-- e)
-- (8 == 8) && 9
-- Bool && Integer -> error

-- 8)
isPalindrome :: Eq a => [a] -> Bool
isPalindrome a = reverse a == a

-- 9)
myAbs :: Integer -> Integer
myAbs x = if x >= 0 then x else negate x

-- 10)
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y))

-- Correcting syntax
-- 1)
x' = (+)

f' xs = w `x'` 1
    where w = length xs

-- 2) 
-- \X = x
-- \x -> x

-- 3)
f'' :: (Integer, Integer) -> Integer 
f'' (a,_) = a

-- Match the function names to their types
-- 1) Show a => a -> String

-- 2) Eq a => a -> a -> Bool

-- 3) (a, b) -> a

-- 4) Num a => a -> a -> a
