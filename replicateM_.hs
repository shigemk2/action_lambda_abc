import Control.Monad
import System.Random

dice :: IO Int
dice = getStdRandom $ randomR (1, 6)

main = do
    -- replicateM_ 3 $ do
    --     print =<< dice
    replicateM_ 3 $ print =<< dice
    -- replicateM_ 3 $ print 4
