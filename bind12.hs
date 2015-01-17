-- アクションの中で実行できる処理はひとつだけで、複数をつなげてひとつの処理にしようとしている 実体はひとつだけ
main =
    print "abc" >>= \a ->
    print a >>= \b ->
    print b >>= \c ->
    print c >>= \d ->
    print d
