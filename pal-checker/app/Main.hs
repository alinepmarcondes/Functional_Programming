module Main (main) where

import Palindrome

main :: IO ()
main = do
    input <- getLine
    let result = if isPalindrome input then "It is a palindrome" else "It is not a palindrome"
    print result
