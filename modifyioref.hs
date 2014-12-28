import System.Random
import Data.IORef

main = do
    a <- newIORef =<< (getStdRandom $ randomR (0, 9) :: IO Int)
    -- a' <- readIORef a
    -- writeIORef a (a' + 1)
    -- 上2行の代わり
    modifyIORef a (+ 1)
    print =<< readIORef a
