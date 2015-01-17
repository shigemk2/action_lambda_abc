import Data.IORef
import Data.Array.IO
import Control.Applicative

-- 無理してアプリカティブスタイルで書く必要はないけどアプリカティブスタイルで書くこともできる
modifyArray a x f =
    -- readArray a x >>= \a' -> writeArray a x (f a')
    -- readArray a x >>= \a' -> (return $ f a') >>= writeArray a x
    -- readArray a x >>= \a' -> (return .f) a' >>= writeArray a x
    -- readArray a x >>= return.f >>= writeArray a x
    -- writeArray a x =<< return.f =<< readArray a x
    writeArray a x =<< f <$> readArray a x

main = do
    a <- newArray (0, 2) 0 :: IO (IOUArray Int Int)
    print =<< getElems a
    -- writeArray a 0 5
    modifyArray a 2 (+ 5)
    print =<< getElems a
