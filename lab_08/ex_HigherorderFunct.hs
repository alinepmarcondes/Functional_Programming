-- Exercise 1
-- [f x | x <- xs, p x]
-- map f $ filter p xs

-- Exercise 2
--1
all' ::  (a -> Bool) -> [a] -> Bool
all' _ [] = True
all' f (x:xs)   | f x = all' f xs 
                | otherwise = False

--2
any' :: (a -> Bool) -> [a] -> Bool
any' _ [] = False
any' f (x:xs)   | f x = True
                | otherwise = any' f xs

--3
takeWhile' :: (a -> Bool) -> [a] -> [a]
takeWhile' _ [] = []
takeWhile' f (x:xs) | f x = x : takeWhile' f xs
                    | otherwise = []

-- 4
dropWhile' :: (a -> Bool) -> [a] -> [a]
dropWhile' _ [] = []
dropWhile' f (x:xs) | f x = dropWhile' f xs
                    | otherwise = (x:xs)

-- Exercise 3
length' :: [a] -> Int
length' = foldr (\_ xs -> xs+1) 0

map' :: (a -> b) -> [a] -> [b]
map' f = foldr (\x xs -> f x : xs) []

filter' :: (a -> Bool) -> [a] -> [a]
filter' f = foldr (\x xs -> if filter' f then x : filter f else ) []

-- Exercise 4
-- Exercise 5
-- Exercise 6
-- Exercise 7
-- Exercise 8
-- Exercise 9
-- Exercise 10
-- Exercise 11
-- Exercise 12