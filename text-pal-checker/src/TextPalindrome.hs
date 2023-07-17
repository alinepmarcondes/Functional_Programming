module TextPalindrome
    ( textPalindrome
    ) where

import Data.Char (isLetter)
import qualified Data.Text as T 

textPalindrome :: String -> Bool
textPalindrome xs = text == T.reverse text 
    where 
        text = T.toLower $ T.filter isLetter $ T.pack xs
        