display :: (a,b) -> IO (a,b)
display x = do
--    putStrLn x
    return fst x
