import System.Random

rand = getStdRandom $ randomR (0.0, 1.0) :: IO Double

main = do
  print =<< rand
