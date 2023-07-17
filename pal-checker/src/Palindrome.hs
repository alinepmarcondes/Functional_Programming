module Palindrome
    ( isPalindrome
    ) where

isPalindrome :: String -> Bool
isPalindrome xs = reverse xs == xs