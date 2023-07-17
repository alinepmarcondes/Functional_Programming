import Data.Char
-- Exercise 1 
l1 = [1,2,3,4,5,6]
a1 = [x | x <- [1..6]]

-- Exercise 2
l2 = [10,20,30,40,50,60]
a2 = [x*10 | x <- [1..6]]

-- Exercise 3
l3 = [(1,1),(2,2),(3,3),(4,4)]
a3 = [(x,x)| x <- [1..4]]

-- Exercise 4
l4 = [(1,2),(2,3),(3,4),(4,5)]
a4 = [(x,x+1)| x <- [1..4]]

-- Exercise 5 
l5 = [(1,1),(2,1),(3,1),(4,1),(5,1)]
a5 = [(x,1) | x <- [1..5]]

-- Exercise 6 
l6 = [(1,1),(2,4),(3,9),(4,16),(5,25),(6,36),(7,49),(8,64),(9,81),(10,100)]
a6 = [(x,x*x) | x <- [1..10]]
 
-- Exercise 7
f1 :: [(Int, Int)]
f1 = [(x, y) | x <-[1..3], y<- [4..5]]
l7 = [(1,4),(1,5),(2,4),(2,5),(3,4),(3,5)]

f2 :: [(Int, Int)]
f2 = [(x, y) | y<- [4..5], x <-[1..3]]
l8 = [(1,4),(2,4),(3,4),(1,5),(2,5),(3,5)]

f3 :: [(Int, Int)]
f3 = [(y, x) | x <-[1..3], y<- [4..5]]
l9 = [(4,1),(5,1),(4,2),(5,2),(4,3),(5,3)]

-- Exercise 8
isEven :: Integer -> Bool
isEven n = (n `mod` 2 == 0)
l10 = [2*n | n <- [2,4,7], isEven n, n>3]
a10 = [8]

allComplete = l1 == a1 && l2 == a2 && l3 == a3 && l4 == a4 && l5 == a5 && l6 == a6 && f1 == l7 && f2 == l8 && f3 == l9 
                && l10 == a10

-- Exercise 9
doubleAll :: [Integer] -> [Integer]
doubleAll xs = [x*2 | x <- xs]

-- Exercise 10
capitalize :: String -> String
capitalize xs = [toUpper x | x <- xs]

-- Exercise 11
sigma = sum[x*x | x <- [1..100]]

-- Exercise 12
sigma' :: Int-> Int
sigma' n = sum[x*x | x <- [1..n]]

-- Exercise 13 
matches :: Integer -> [Integer] -> [Integer]
matches x xs = [x' | x' <- xs, x == x']

-- Exercise 14
grid :: Int -> Int -> [(Int, Int)]
grid x y = [(x',y') | x' <- [0..x], y' <- [0..y]]

-- Exercise 15
square :: Int -> [(Int, Int)]
square x = [(x,y)|(x,y) <- grid x x, x /= y]

-- Exercise 16
myReplicate :: Int -> a -> [a]
myReplicate x a = [a | x' <- [1..x]]

-- Exercise 17
pyths :: Int -> [(Int,Int,Int)]
pyths n = [(x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x*x+y*y==z*z] 

-- Exercise 18
factors :: Int -> [Int]
factors x = [x' | x' <- [1..x], x `mod` x' == 0]
perfects :: Int -> [Int]
perfects x = [x' | x' <- [1..x], sum (factors x') - x' == x']