import System.Random
import Control.Applicative

replicateM' 0 _ = return []
replicateM' n m =
    -- m >>= \x -> replicateM' (n - 1) m >>= \xs -> return $ x : xs
    -- m >>= \x -> replicateM' (n - 1) m >>= \xs -> return $ (:) x xs
    -- m >>= \x -> replicateM' (n - 1) m >>= (return . (x :))
    -- (\x -> (replicateM' (n - 1) m >>= (return . (x :)))) =<< m
    -- (\x -> (return . (x :) =<< (replicateM' (n - 1) m))) =<< m
    (:) <$> m <*> replicateM' (n - 1) m

replicateM_' 0 _ = return []
replicateM_' n f = f >> replicateM' (n - 1) f

forM' [] _ = return []
forM' (x:xs) f =
    -- f x >>= \x' -> forM' xs f >>= \xs' -> return $ x' : xs'
    -- f x >>= \x' -> forM' xs f >>= \xs' -> return $ (:) x' xs'
    -- f x >>= \x' -> forM' xs f >>= (return . (x' :))
    -- (\x' -> forM' xs f >>= (return . (x' :))) =<< f x
    -- (\x' -> (return . (x' :)) =<< (forM' xs f)) =<< f x
    (:) <$> f x <*> forM' xs f

forM_' [] _ = return []
forM_' (x:xs) f = f x >> forM' xs f

main = do
    let dice = getStdRandom $ randomR (1, 6) :: IO Int
    print =<< replicateM' 5 dice
    putStrLn "---"
    replicateM_' 3 $ do
        print =<< dice
    putStrLn "---"
    replicateM_' 3 $ print 4
    putStrLn "---"
    a <- forM' [1..3] $ \i -> do
        print i
        return i
    print a
    putStrLn "---"
    forM_' [1..3] $ \i -> do
        print i
    putStrLn "---"
    -- let y x = x (y x)
    -- y $ \f -> do
    --     r <- dice
    --     print r
    --     when' (r /= 1) f
    -- putStrLn "---"
    -- y $ \f -> do
    --     r <- dice
    --     print r
    --     unless' (r == 6) f
