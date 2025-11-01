module Ch02 where
-- Chapter 2

-- Comprehension Check
half x = x / 2
square x = x * x

-- Exercises: Parentheses and association

-- 1.
oneA = 8 + 7 * 9
-- 71

oneB = (8 + 7) * 9
-- 135

-- 2.
perimeter x y = (x * 2) + (y * 2)
perimeter' x y = x * 2 + y * 2
-- both are equivalent

-- 3.
f x = x /2 + 9
f' x = x / (2 + 9)
-- different results, f divides x by 2 and then adds 2 to the result,
-- while f' divides x by 11.

-- Exercises: Heal the sick

-- 1.
area x = 3.14 * (x * x)

-- 2.
double x = x * 2
double' = (*2) -- just to write it in a different way

-- 3.
x = 7
y = 10
f'' = x + y

-- Exercises: A head code

-- 1.
aHeadCodeOne = let x = 5 in x
-- 5

-- 2.
aHeadCodeTwo = let x = 5 in x * x
-- 25

-- 3.
aHeadCodeThree = let x = 5; y = 6 in x * y
-- 30

-- 4.
aHeadCodeFour = let x = 3; y = 1000 in x + 3
-- 6

-- Part 2:
-- 1.
-- let x = 3; y = 1000 in x * 3 + y
aHeadCodePartTwoQuOne = x * 3 + y
    where x = 3
          y = 1000
-- 1009

-- 2.
-- let y = 10; x = 10 * 5 + y in x * 5
aHeadCodePartTwoQuTwo = x * 5
    where y = 10
          x = 10 + 5 + y
-- 125

-- 3.
aHeadCodePartTwoQuThree = z / x + y
    where x = 7
          y = negate x
          z = y * 10
-- (-17)

-- Chapter exercises
-- Parenthesization

-- 1.
parenthesizationOne = 2 + 2 * 3 - 1
parenthesizationOne' = 2 + (2 * 3) - 1

-- 2.
parenthesizationTwo :: Integer
parenthesizationTwo = (^) 10 $ 1 + 1
parenthesizationTwo' = (^) 10 (1 + 1)
parenthesizationTwo'' = 10 ^ (1 + 1)

-- 3.
parenthesizationThree = 2 ^ 2 * 4 ^ 5 + 1
parenthesizationThree' = (2 ^ 2) * (4 ^ 5) + 1

-- Equivalent expressions

-- 1. 
equivOne = 1 + 1
equivOne' = 2
-- equivalent (both evaluate to 2)

-- 2.
equivTwo = 10 ^ 2
equivTwo' = 10 + 9 * 10
-- equivalent (both evaluate to 100)

-- 3.
equivThree = 400 - 37
-- 363
equivThree' = (-) 37 400
-- (-363)
-- not equivalent

-- 4.
equivFour = 100 `div` 3
-- 33
equivFour' = 100 / 3
-- 33.3333
-- not equivalent

-- 5.
equivFive = 2 * 5 + 18
-- 28
equivFive' = 2 * (5 + 18)
-- 46
-- not equivalent

-- More fun with functions
z = 7
y' = z + 8
x' = y' ^ 2
waxOn = x' * 5
-- 1125

funWithFunctionsOne = 10 + waxOn
-- 1135
funWithFunctionsOne' = (+10) waxOn
-- 1135
funWithFunctionsOne'' = (-) 15 waxOn
-- (-1110)
funWithFunctionsOne''' = (-) waxOn 15
-- 1110

-- 2.
triple x = x * 3

-- 3.
funWithFunctionsThree = triple waxOn
-- 3375

waxOn' = x * 5
    where z = 7
          y = z + 8
          x = y ^ 2
-- 1125

waxOff x = triple x
waxOff' = triple
