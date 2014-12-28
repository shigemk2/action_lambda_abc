import Data.Array.IO

modifyArray x y h =
    writeArray x $ h y

main = do
    a <- newArray (0, 2) 0 :: IO (IOUArray Int Int)
    print =<< getElems a
    modifyArray a 1 (+ 5)
    print =<< getElems a

