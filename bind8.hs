-- doなし
main =
    print "abc" >>= \_ ->
    print "def" >>= \_ ->
    print "ghi"
