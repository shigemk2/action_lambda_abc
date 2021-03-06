import Control.Monad
import System.Random

dice :: IO Int
dice = getStdRandom $ randomR (1, 6)

main = do
    r <- dice
    print r
    when (r /= 3) main
