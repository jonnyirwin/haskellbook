module Ch05 where
import GHC.Base (BCO)

f :: a -> a -> a -> a
f = undefined 

x :: Char
x = 'a'

result1 :: Char -> Char -> Char
result1 = f x

g :: a -> b -> c -> b
g = undefined

result2 :: Char
result2 = g 0 'c' "woot"

h :: (Num a, Num b) => a -> b -> b
h = undefined

result3 :: Integer
result3 = h 1.0 2

result4 :: Double
result4 = h 1 (5.5 :: Double)

jackal :: (Ord a, Eq b) => a -> b -> a 
jackal = undefined

result5 :: String
result5 = jackal "keyboard" "has the word jackal in it"

result6 :: Eq b => b -> String
result6 = jackal "keyboard"

kessel :: (Ord a, Num b) => a -> b -> a
kessel = undefined 

result7 :: Integer
result7 = kessel 1 2

result8 :: Integer
result8 = kessel 1 (2 :: Integer)

result9 :: Integer
result9 = kessel (1 :: Integer) 2

-- Parametricity

functionA :: a -> a 
functionA a = a

functionB :: a -> a -> a
functionB a _ = a 

functionC :: a -> a -> a
functionC _ b = b

functionD :: a -> b -> b
functionD _ b = b

myConcat :: [Char] -> [Char]
myConcat x = x ++ " yo"

myMult ::Double -> Double 
myMult x = x / 3 * 5

myTake :: Int -> [Char]
myTake x = take x "hey you"

myCom :: Int -> Bool
myCom x = x > (length [1..10])

myAlph :: Char -> Bool
myAlph x = x < 'z'

-- Chapter Exercises
-- Multiple Choice
-- 1. A value of type [a] is:
--    (c) a list of elements that are all of some type a
--
-- 2. A function of type [[a]] -> [a] could:
--    (a) take a list of strings as an argument
--
-- 3. A function of type [a] -> Int -> a
--    (b) returns one element of type a from a list 
--
-- 4. A function of type (a, b) -> a:
--    (c) takes a tuple argument and returns the first value
--
-- Determine the type
-- 1 a) (* 9) 6 is Num a => a
--   b) head [(0, "doge"),(a, "kitteh")] is Num a => (a, String)
--   c) head [(0 :: Integer, "doge"),(a, "kitteh")] is (Integer, String)
--   d) if False then True else False is Bool
--   e) length [1, 2, 3, 4, 5] is Int
--   f) (length [1,2,3,4,5]) > (length "TACOCAT") is Bool
--
-- 2 w :: Num => a
-- 3 z :: Num a => a -> a
-- 4 f :: Fractional a => a
-- 5 f :: [Char]
--
-- Does it compile?
--
-- 1. bigNum = (^) 5 $ 10 -- compiles and is a number as both values are passed to ^ function
--    wahoo = bigNum $ 10 -- does not compile as bigNum was already fully evaluated
--
-- 2. x = print 
--    y = print "wahoo!"
--    z = x "hello world!" -- all compile. x is just aliasing print 
--
-- 3. a = (+)
--    b = 5
--    c = b 10 -- this will not compile as b is a number, not a function. Assumed fix is `c = a 10`
--    d = c 200
--
-- 4. a = 12 + b
--    b = 10000 * c -- there is no c, and assuming a new repl, there is also no b when a is created
--
-- Type variable or specific type constructor? 
--
-- 1. 
-- f' :: Num a  => a -> b -> Int -> Int
-- f' = undefined
-- a = constrained polymorphic, b = fully polymorphic, others are concrete
--
-- 2. 
-- f'' :: zed -> Zed -> Blah
-- f'' = undefined
-- zed = fully polymorphic, Zed = concrete type constructor, Blah = concrete type constructor
--
-- 3.
-- f''' :: Enum b => a -> b -> C
-- f''' = undefined 
-- a = fully polymorphic, b = constrained polymorphic, C = concrete type constructor
--
-- 4.
-- f'''' :: f -> g -> C
-- f'''' = undefined 
-- f = fully polymorphic, g = fully polymorphic, C = concrete type constructor
--
-- Write a type signature

functionH :: [a] -> a
functionH (x:_) = x

functionC' :: Ord a => a -> a -> Bool
functionC' x y = if (x > y) then True else False

functionS :: (a, b) -> b
functionS (x, y) = y

-- Given a type, write the function

i :: a -> a
i = i

-- c :: b -> a -> b
c :: a -> b -> a
c x y = x

c' :: a -> b -> b
c' x y = y

r :: [a] -> [a]
-- r x = reverse x
r x = x ++ x

co :: (b -> c) -> (a -> b) -> a -> c
co bToC aToB a = bToC $ aToB a

a :: (a -> c) -> a -> a
a _ x = x 

a' :: (a -> b) -> a -> b
a' aToB a = aToB a

-- Fix it

fstString :: [Char] -> [Char]
fstString x = x ++ " in the rain"

sndString :: [Char] -> [Char]
sndString x = x ++ " over the rainbow"

sing :: [Char]
sing = if (x < y) then fstString x else sndString y
       where 
         x = "Singin"
         y = "Somewhere"

-- Type-Kwon-Do

f2 :: Int -> [Char]
f2 = undefined

g2 :: [Char] -> Char
g2 = undefined 

h2 :: Int -> Char
h2 x = g2 $ f2 x

data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C 
e x = w $ q x

data X
data Y
data Z 

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform (a, b) = (xz a, yz b) 

munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge xToY yToWZ d = fst $ yToWZ $ xToY d

