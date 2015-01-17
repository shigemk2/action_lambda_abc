-- newしてreadしてwriteする破壊的代入
import System.Random
import Data.IORef

main = do
    -- a <- newIORef =<< (getStdRandom $ randomR (0, 9) :: IO Int)
    a <- newIORef =<< return 1
    -- a <- newIORef 2
    a' <- readIORef a
    writeIORef a (a' + 1)
    print =<< readIORef a
