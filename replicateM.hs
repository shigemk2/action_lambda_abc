import Control.Monad
import System.Random

dice :: IO Int
dice = getStdRandom $ randomR (1, 6)

main = do
    print $   replicate  5 1
    print =<< replicateM 5 (return 1)
    print =<< replicateM 5 dice
