-- doなし
main =
    return "hello" >>= \a ->
    print a
