import scala.util.Random

val r = new Random
val rands = (1 to 100).map(_ => (1 to 12).map(_ => r.nextDouble).sum.round.toInt - 6)

for (i <- rands.min to rands.max) {
  val c = rands.filter(i == _).length
  printf("%2d: %s\n", i, "*"*c)
}
