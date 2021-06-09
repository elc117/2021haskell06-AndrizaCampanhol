-- Prática 06 de Haskell
-- Nome: Andriza Campanhol

--01
ends :: [Int] -> [Int]
ends (x:xs) = x : [last xs]

--02
deduzame :: [Integer] -> [Integer]
deduzame [] = []
deduzame (x:xs) = x * 2 : deduzame xs

--03
deduzame2 :: [Integer] -> [Integer]
deduzame2 [] = []
deduzame2 (x:xs) = if x > 2
  then x : deduzame2 xs 
  else deduzame2 xs

--04
geraTabela :: Int -> [(Int,Int)]
geraTabela num = if num > 0 then (num, num^2) : geraTabela (num-1) else []

--05
contido :: Char -> String -> Bool
contido c "" = False
contido c (x:xs) = if x == c then True else contido c xs

--06
translate :: [(Float,Float)] -> [(Float,Float)]
translate [] = []
translate ((n1,n2):xs) = (n1+2,n2+2) : translate xs

--07
countLongs :: [String] -> Int
countLongs [] = 0
countLongs (x:xs) = if length x > 5 then 1 + countLongs xs else countLongs xs

--08
onlyLongs :: [String] -> [String]
onlyLongs [] = []
onlyLongs (x:xs) = if length x > 5 then x : onlyLongs xs else onlyLongs xs
