-- Lab test for Haskell. This is worth 5% of your overall score. This test is worth 100 Marks. 
-- This file is made up of 
-- 		SECTION A(Q1.hs) - 40 Marks
--	 	SECTION B(Q2.hs) - 30 Marks
--		SECTION C(Q3.hs) -30 Marks  (this is in clas_test_fixing errors.hs) )

-- Please put your name below (where indicated) and zip the files into a .zip file using the naming convention 
-- first letter of first name + last name (e.g. mmeagher.zip)


-- PLEASE FILL THIS IN
-- Student Name : Aline Patta Marcondes

--SECTION A - Fixing Errors- 40 Marks
-- Please fill in your name and student number
-- Student Name : Aline Patta Marcondes
-- Student Number : 20103986

-- Fix the error in the code below. Load the file, read the error message

-- and fix ONE ERROR at a time. Then load the file and read the next error

-- message. 

-- Note if either a change in the type of a function / value or  the value/definition will allow 

-- the code to compile, you can change either to make it error-free. 

-- Hint comment out all but the code you are currently working on. Leave all code uncommented before submission. 



a1:: Bool
a1 = True                  

a2 :: Double
a2 =  9.0          

a3 :: String
a3 = "Haskell"                    

a4 :: Int -> Int
a4 e = if e == 1 then 4 else 5        

a5 :: Double
a5 = 77.4

a6:: Int -> Int
a6 x = x `div` 2

a7:: Int -> Int
a7 x = x * 7

a8 :: Bool
a8 =   a1 && False               

a9 :: Integer -> Char
a9 x = '4'

a10 :: Int -> Bool
a10 x = x == 3