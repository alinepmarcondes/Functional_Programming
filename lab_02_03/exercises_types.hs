-- Exercise 1
a1 :: [Char]
a1 = ['a', 'b', 'c']

a2 :: (Char, Char, Char)
a2 = ('a', 'b', 'c')

a3 :: [(Bool, Char)]
a3 = [(False, '0'), (True, '1')]

a4 :: ([Char],[Char])
a4 = (['1', '0'], ['0', '1'])

a5 :: [[a1] -> [a1]]
a5 = [tail, init, reverse]

-- Exercise 2 
bools :: [Bool]
bools = [False,True]

nums :: [[Int]]
nums = [[1,2,3,4,5]]

add :: Int -> Int -> Int-> Int
add a b c = a+b+c

copy :: a -> (a,a)
copy a = (a,a)

apply :: (a -> b) -> a -> b
apply f x = f x

-- Exercise 3 
second :: [a] -> a
second xs = head (tail xs)

swap :: (a,b) -> (b,a)
swap (x,y) = (y,x)

pair :: a -> b -> (a,b)
pair x y = (x,y)

double :: Num a => a -> a
double x = x*2

pallindrome :: Eq a => [a] -> Bool 
pallindrome xs = reverse xs == xs

twice :: (a -> a) -> a -> a
twice f x = f (f x)