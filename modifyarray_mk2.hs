import Data.Array.IO
import Control.Applicative

modifyArray a i f = writeArray a i =<< f <$> readArray a i

main = do
    a <- newArray (0, 2) 0 :: IO (IOUArray Int Int)
    print =<< getElems a
    modifyArray a 1 (+ 5)
    print =<< getElems a

