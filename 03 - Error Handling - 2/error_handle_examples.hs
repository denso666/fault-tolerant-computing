-- Return the head of a list
-- Handle the error with precondition intructions
head :: [Int] -> Int
head []     = Error "head: empty list"
head (x:_)  = x

{- Test 1 - Success
ghci> head [10, 20, 30, 40]
10
-}
{- Test 2 - Error
ghci> head []
*** Exception: head: empty list
-}

-- Return the head of a list
-- Handle the error with contract intructions
-- Maybe: represent a computation that can fail (in the case of a Nothing)
data Maybe a = Nothing | Just a
maybeHead :: [a] -> Maybe a
maybeHead []    = Nothign       -- return nothing on fail
maybeHead (x:_) = Just x        -- return head on success

{- Test 1 - Success
ghci> maybeHead [10, 20, 30, 40]
Just 10
-}
{- Test 2 - Success
ghci> head []
Nothing
-}

-- Division
-- Handle the error with contract intructions
-- Maybe: represent a computation that can fail (in the case of a Nothing)
divide :: Int -> Int -> Maybe Int
divide x y = do
    if y == 0 then
        Error "Division by zero"
    else
        Just (x `div` y)