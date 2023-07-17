-------------------------------------------------------------------------------
-- Class exercise zip function
zip' :: [a] -> [b] -> [(a,b)]
zip' [] _ = []
zip' _ [] = []
zip' (x:xs) (y:ys) = (x,y) : zip xs ys

-- Class exercise appending two lists
append' :: [a] -> [a] -> [a]
[] `append'` ys = ys
(x:xs) `append'` ys = x : (xs `append'` ys)

-------------------------------------------------------------------------------

-- Exercise 1
sumdown :: Int -> Int
sumdown 0 = 0
sumdown x = x + sumdown(x-1) 

-- Exercise 2
exp' :: Int -> Int -> Int
exp' _ 0 = 1
exp' x y = x * exp' x (y-1)

-- Exercise 3
fibonacci :: Int -> Int 
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x = fibonacci (x-1) + fibonacci (x-2)

f :: Int -> [Int]
f x = [fibonacci x' | x' <- [1..x]]

-- Exercise 4
myInit :: [a] -> [a]
myInit [] = []
myInit [x] = []
myInit (x:xs) = x : myInit xs

-- Exercise 5
-- 1
myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (False:_) = False
myAnd (_:xs) = myAnd xs

-- 2
myConcat :: [[a]] -> [a]
myConcat [] = []
myConcat (x:xs) = x ++ myConcat xs

-- 3
myReplicate :: Int -> a -> [a]
myReplicate 0 _ = []
myReplicate x y = y : myReplicate (x-1) y

-- 4
myNth :: [a] -> Int -> a
myNth [] _ = error "position not found"
myNth (x:_) 0 = x
myNth (x:xs) y = myNth xs (y-1)   

--5
myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem y (x:xs) = if y == x then True else myElem y xs

-- Exercise 6
mySum :: Num a => [a] -> a -- step 1
--step 2
mySum [] = 0 -- step 3
mySum (x:xs) = x + (mySum xs) -- step 4

myTake :: [a] -> Int -> [a] -- step 1
-- step 2
myTake [] _ = [] 
myTake _ 0 = [] -- step 3 5
myTake (x:xs) y = x : myTake xs (y-1) -- step 4

myLast :: [a] -> a -- step 1
-- step 2
myLast (x:[]) = x 
myLast (x:xs) = myLast xs -- step 4

-- Exercise 7
merge :: Ord a => [a] -> [a] -> [a] -- step 1
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys) = if x > y then (y : (merge (x:xs) ys)) else (x : (merge xs (y:ys))) 

-- Exercise 8
halve :: [a] -> ([a], [a])
halve xs = ((take n xs), (drop n xs))
            where n = (length xs) `div` 2

msort :: Ord a => [a] -> [a]
msort [] = []
msort [x] = [x]
msort xs = merge myFirst mySnd
            where 
                myFirst = msort (fst (halve xs)) 
                mySnd = msort (snd (halve xs))