module Ch06 where
import System.Posix (inputSpeed)
import Data.List (sort)

-- Exercise: Eq Instances

data TisAnInteger = TisAn Integer

instance Eq (TisAnInteger) where
  (==) (TisAn a) (TisAn b) = a == b

data TwoIntegers = Two Integer Integer

instance Eq TwoIntegers where
  (==) (Two a b) (Two a' b') = a == a' && b == b'

data StringOrInt = TisAnInt Int | TisAString String

instance Eq StringOrInt where
  (==) (TisAnInt a) (TisAnInt b) = a == b
  (==) (TisAString a) (TisAString b) = a == b
  (==) _ _ = False

data Pair a = Pair a a

instance (Eq a) => Eq (Pair a) where
  (==) (Pair a x) (Pair b y) = a == b && x == y

data Tuple a b = Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple a b) (Tuple a' b') = a == a' && b == b'

data Which a = ThisOne a | ThatOne a

instance (Eq a) => Eq (Which a) where
  (==) (ThisOne a) (ThisOne a') = a == a'
  (==) (ThatOne a) (ThatOne a') = a == a'
  (==) _ _ = False

data EitherOr a b = Hello a | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello a) (Hello a') = a == a'
  (==) (Goodbye b) (Goodbye b') = b == b'
  (==) _ _ = False

-- Exercise: Tuple experiment
-- Suggest `quotRem` gets the quot of 2 numbers in the first item of a tuple an the remainder in the second item
-- Suggest `divMod` gets the div of 2 numbers in the first item of a tuple and the mod in the second item

data DayOfWeek
  = Mon
  | Tue
  | Wed
  | Thu
  | Fri
  | Sat
  | Sun
  deriving (Show)

instance Eq DayOfWeek where
  (==) Mon Mon = True
  (==) Tue Tue = True
  (==) Wed Wed = True
  (==) Thu Thu = True
  (==) Fri Fri = True
  (==) Sat Sat = True
  (==) Sun Sun = True
  (==) _ _ = False

instance Ord DayOfWeek where
  compare Sun Sun = EQ
  compare Sun _ = GT
  compare _ Sun = LT
  compare Sat Sat = EQ
  compare Sat _ = GT
  compare _ Sat = LT
  compare Fri Fri = EQ
  compare Fri _ = GT
  compare _ Fri = LT
  compare Thu Thu = EQ
  compare Thu _ = GT
  compare _ Thu = LT
  compare Wed Wed = EQ
  compare Wed _ = GT
  compare _ Wed = LT
  compare Tue Tue = EQ
  compare Tue _ = GT
  compare _ Tue = LT
  compare Mon Mon = EQ

-- Exercise: Will they work?

quOne = max (length [1, 2, 3]) (length [8, 9, 10, 11, 12])

quTwo = compare (3 * 4) (3 * 5)

quThree = compare "Julie" "True" -- True, the boolean will not work

quFour = (5 + 3) > (3 + 6)

-- Chapter Exercise
-- Multiple choice 
--
-- The Eq class... makes equality tests possible
-- The type class Ord... is a subclass of Eq
-- The type of Ord operator > is... Ord a => a -> a -> Bool 
-- In x = divMod 16 12... the type of x is a tuple
-- The type class Integral includes... Int and Integer numbers

-- Does it type check?
data Person = Person Bool
  deriving Show

printPerson :: Person -> IO ()
printPerson person = print person


data Mood = Blah | Woot deriving (Show, Eq)

settleDown x = if x == Woot
               then Blah
               else x

-- a) Blah or Woot are acceptable inputs
-- b) wrong type as x has been inferred as a Mood due to x == Woot 
-- c) Blah > Woot will fail as no Ord type class

type Subject = String
type Verb = String
type Object = String

data Sentence =
  Sentence Subject Verb Object
  deriving (Eq, Show)

s1 = Sentence "dogs" "drool" -- missing a verb so is a function, which show does not work for
s2 = Sentence "Julie" "loves" "dogs" -- works

-- Given a datatype declaration, what can we do?


data Rocks = Rocks String deriving (Eq, Show, Ord)

data Yeah = Yeah Bool deriving (Eq, Show, Ord)

data Papu = Papu Rocks Yeah deriving (Eq, Show, Ord)

phew = Papu (Rocks "a") (Yeah False)

equalityForAll :: Papu -> Papu -> Bool
equalityForAll p p' = p == p'

comparePapus :: Papu -> Papu -> Bool
comparePapus p p' = p > p' -- adding Ord to each type makes it work

-- Match the types
i :: Num a => a 
i = 1

f :: Float
f = 1.0

f' :: Fractional a => a
f' = 1.0

f'' :: RealFrac a => a
f'' = 1.0

freud :: a -> a 
freud x = x

freud'' :: Ord a => a -> a
freud'' x = x

freud''' :: Int -> Int
freud''' x = x

myX = 1 :: Int

sigmund :: Int -> Int
sigmund x = myX 

-- sigmund' :: a -> a
-- sigmund' x = myX - Can't match Int with any a

-- sigmund' :: Num a => a -> a
-- sigmund' x = myX -- Cant match Int with any instance of Num

jung :: Ord a => [a] -> a
jung xs = head (sort xs)

jung' :: [Int] -> Int
jung' xs = head (sort xs)

young :: [Char] -> Char
young xs = head (sort xs)

young' :: Ord a => [a] -> a
young' xs = head (sort xs)



mySort :: [Char] -> [Char]
mySort = sort

signifier :: [Char] -> Char
signifier xs = head (mySort xs)

-- signifier' :: Ord a => [a] -> a
-- signifier' xs = head (mySort xs) -- doesn't work as mySort specifies [Char]

-- Type-Kwon-Do Two: Electric typealoo

chk :: Eq b => (a -> b) -> a -> b -> Bool
chk aToB a b= aToB a == b

arith :: Num b => (a -> b) -> Integer -> a -> b
arith aToB x a = aToB a * fromInteger x



