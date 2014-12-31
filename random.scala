import scala.util.Random

var math = 0.0
var sum = 0
var r = new Random
var count = new Array[Int](13)

for (i <- 1 to 100) {
  var math = 0.0
  for (i <- 1 to 12) {
    math += r.nextDouble
  }
  sum = (math + 0.5).floor.toInt
  count(sum) += 1
}
for (i <- 0 to 12) {
  val c    = i - 6
  val spc  = " " * (2 - c.toString.length)
  val star = "*" * count(i)
  println(s"$spc$c: $star")
}


