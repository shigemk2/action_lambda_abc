hoge a = do
    return $ a : []

main = do
    print =<< hoge 5
