module Reverse where

-- from chapter 3

rvrs :: String -> String
rvrs a = drop 9 a ++ take 4 (drop 5 a) ++ take 5 a

main :: IO ()
main = print $ rvrs "Curry is awesome"