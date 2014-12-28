main =
    print "abc" >>= \_ ->
        print "def" >>= \_ ->
            print "ghi" >>= \_ ->
                print "jkl" >>= \_ ->
                    print "mno"
