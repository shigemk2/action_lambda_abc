import System.Random
import Data.IORef

main =
    -- (getStdRandom $ randomR (0, 9) :: IO Int) >>= newIORef >>= \a ->
    return 1 >>= newIORef >>= \a ->
    modifyIORef a (+ 1) >>= \_ -> readIORef a >>= print
