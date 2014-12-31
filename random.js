var math = 0;
var sum = 0;
var count = [0,0,0,0,0,0,
             0,0,0,0,0,0,0];
for(var i = 0; i < 100; i++) {
  math = 0;
  for(var j = 0; j < 12; j++) {
    math += Math.random();
  }
  sum = Math.floor(math + 0.5) - 6;
  count[sum + 6]++;
}
var star = "";
for (var i = 0; i < count.length; i++) {
  star = "";
  for (var j = 0; j < count[i]; j++) {
    star += "*";
  }
  console.log("%s: %s", i-6, star);
}

