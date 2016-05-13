// Calculate the golden ratio.
// in between 1.61800 and 1.61806
// Given two numbers a and b with a > b > 0, the ratio is b / a.
// Let c = a + b, then the ratio c / b is closer to the golden ratio.
// Let d = b + c, then the ratio d / c is closer to the golden ratio.
// Let e = c + d, then the ratio e / d is closer to the golden ratio.
// If you continue this process, the result will trend towards the golden ratio.

function goldenRatio(a, b) {
  var ratio = b / a;

  function getNewRatio(x, y) {
    var newRatio = x / y;
    returnRatio = 0;

    if ((newRatio > 1.61800) && (newRatio < 1.61806)) {
      returnRatio = newRatio;
    } else {
      getNewRatio((x + y), x);
    }
    return returnRatio;
  }

  if ((ratio > 1.61800) && (ratio < 1.61806)) {
    return ratio;
  } else {
    var goldenRatio = getNewRatio((a + b), b);
    return goldenRatio;
  }

}
