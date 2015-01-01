import scala.util.Random

val r = new Random
val rands = (1 to 100).flatMap(_ => List((1 to 12).flatMap(_ => List(r.nextDouble)).sum.+(0.5).floor.toInt - 6))

for (i <- -6 to 6) {
  val c = rands.filter(n => i == n).length
  val j = i.toString
  val n = " " * (2 - j.length) + j
  printf("%s: %s\n", n, "*"*c)
}
