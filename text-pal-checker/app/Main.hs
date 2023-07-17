module Main (main) where

import TextPalindrome

main :: IO ()
main = do
    input <- getLine
    let result = if textPalindrome input then "It is a palindrome" else "It is not a palindrome"
    print result