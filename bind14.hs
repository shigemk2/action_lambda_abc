import Control.Applicative

inc x = x + 1

main = do
    (return . inc) 2 >>= print
    print $ inc 2
    return 2 >>= return.inc >>= print
    print =<< return.inc =<< return 2
    -- print =<< inc =<< return 2
    -- アプリカティブスタイル
    -- 関数合成がわからないと有り難みがわからないかもしれない
    -- incの戻り値をアクションにしようとしている
    print =<< inc <$> return 2
