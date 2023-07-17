-- Exercise 1
add1 :: Int -> Int
add1 a = a+1

-- Exercise 2
always0 :: Int-> Int
always0 _ = 0

-- Exercise 3
subtract' :: Int-> Int-> Int
subtract' a b = a-b

-- Exercise 4 
addmult :: Int-> Int -> Int-> Int
addmult p q r = (p+q)*r

-- Exercise 5 
greaterThan0 :: Int -> String
greaterThan0 a = if a > 0 then "Yes!" else "No!"

-- Exercise 6 
pushOut :: Int -> Int   
pushOut a = if a > 0 then a+1 else
            if a < 0 then a-1 else 0

-- Exercise 7 
halve :: [a] -> ([a], [a])
halve xs = ((take (length xs `div` 2) xs), (drop (length xs `div` 2) xs))

-- Exercise 8 
third :: [a] -> a
third xs = xs !! 2

third' :: [a] -> a
third' xs = head(tail(tail xs))

third'' :: [a] -> a
third'' (_ : _ : z : _) = z

-- Exercise 9 
safetail :: [a] -> [a]
safetail xs = if null xs then xs else tail xs 

-- Exercise 10
myOr False False = False 
myOr _ _ = True

-- Exercise 11
lucky :: Integral a => a-> String
lucky a = if a == 7 then "Lucky you.. Proceed directly to buy a lottery ticket." else
          if a == 13 then "You, sadly are quite unlucky. Do not, under any circumstances, invest money today." 
          else "Mmmm.... Can’t really say...."

-- Exercise 12
first(x,_,_) = x
second(_,y,_) = y
third'''(_,_,z) = z

