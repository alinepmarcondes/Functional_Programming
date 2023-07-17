-----------------------
-- Class exercise
-- Tail recursion on sum
sumIntsTail :: [Int] -> Int
sumIntsTail ns = helper ns 0 where
    helper [] acc = acc
    helper (n:ns) acc = helper ns (acc + n)
------------------------

-- Exercise 1
fibT :: Int -> Int
fibT n = helper n 0 1 where
    helper 0 acc aux = acc
    helper 1 acc aux = aux
    helper n acc aux = helper (n-1) aux (aux+acc)

fibList x = [fibT xs | xs <- [0..x]]

-- Exercise 2
myMult :: Int -> Int -> Int
myMult x y = helper x y 0 where
    helper 0 _ acc = acc 
    helper x y acc = helper (x-1) y (acc+y)

-- Exercise 3
revT :: [a] -> [a]
revT xs = helper xs [] where
    helper [] acc = acc
    helper (x:xs) acc = helper xs (x : acc)
