module Utils
    ( title
    ) where

import Data.Text as T (Text, toTitle, pack)
        
title :: Text -> Text
title xs = T.toTitle text
    where 
        text = T.pack xs

     