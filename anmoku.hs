test1 = do
    print 1
    print 2

test2 = print 1 >> print 2 >> return []

main = test1 >> test2
