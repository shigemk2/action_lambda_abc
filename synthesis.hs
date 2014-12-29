import Control.Monad

f1 x = putStr x >>= print
f2 = \x -> putStr x >>= print
f3 = putStr >=> print
f4 = print <=< putStr
f5 = (>>= print) . putStr

main = f1 "1" >> f2 "2" >> f3 "3" >> f4 "4" >> f5 "5"

