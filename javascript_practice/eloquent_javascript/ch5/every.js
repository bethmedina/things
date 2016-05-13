function every(arr, cond) {
  for (var i = 0; i < arr.length; i++) {
    if (!cond(arr[i])) {
      return false;
    } else {
      return true;
    }
  }
}

function some(arr, cond) {
  for (var i = 0; i < arr.length; i++) {
    if (cond(arr[i])) {
      return true;
    } else {
      return false;
    }
  }
}

console.log(every([NaN, NaN, NaN], isNaN));
console.log(every([NaN, NaN, 4], isNaN));
console.log(some([NaN, 3, 4], isNaN));
console.log(some([2, 3, 4], isNaN));
