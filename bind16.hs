test f = do
    f >>= \_ -> f
main =
    test $ print 3


