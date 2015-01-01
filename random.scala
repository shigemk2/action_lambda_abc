import scala.util.Random

val r = new Random
val rands = (1 to 100).map(_ => (1 to 12).map(_ => r.nextDouble).sum.round.toInt - 6)

for (i <- -6 to 6) {
  val c = rands.filter(n => i == n).length
  printf("%2d: %s\n", i, "*"*c)
}
