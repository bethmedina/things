// Give the square root of a number
// Using a binary search algorithm, search for the square root of a given number.
// Do not use the built-in square root function.
function squareRoot(n) {
  if (n <=1 ) { return n; }

  var min = 1;
  var max = n;

  while (max - min > 0.00001) {
    var mid = min + (max - min) / 2;
    if (mid * mid - n > 0.00001) {
      max = mid;
    } else {
      min = mid;
    }
  }

  return Math.round(min * 10000)/10000;
}
