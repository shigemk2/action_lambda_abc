import Control.Monad

main = do
    a <- forM [1..3] $ \i -> do
        print i
        return i
    a <- forM [1..3] $ \i -> return i
    print a
