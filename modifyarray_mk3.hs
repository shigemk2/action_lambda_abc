import Data.IORef
import Data.Array.IO

modifyArray a x f = do
    a' <- readArray a x
    writeArray a x (f a')

main = do
    a <- newArray (0, 2) 0 :: IO (IOUArray Int Int)
    print =<< getElems a
    -- writeArray a 0 5
    modifyArray a 2 (+ 5)
    print =<< getElems a
