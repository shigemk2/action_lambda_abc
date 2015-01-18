replicateM_' 0 _ = return []
replicateM_' n f = do
    f >> replicateM_' (n - 1) f

main = do
    replicateM_' 3 $ print 3


