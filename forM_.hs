import Control.Monad

main = do
    forM_ [1..3] $ \i -> do
        print i
    a <- forM_ [1..3] $ \i -> do
        print i
    print a
