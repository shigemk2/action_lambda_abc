inc x = x + 1

main = do
    (return . inc) 2 >>= print
    print $ inc 2
    -- return 2 >>= inc >>= print
    -- print =<< inc =<< return 2
