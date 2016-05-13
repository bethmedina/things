var num_ary = [];

function range(start, stop, step) {
  if (arguments.length < 3) {
    step = 1;
  }

  for (x=start; x <= stop; x++) {
    num_ary.push(x * step);
  }
  return num_ary;
}

function sum(range) {
  ret_val = 0;
  for (x=0; x < range.length; x++) {
    ret_val += range[x]
  }
  return ret_val;
}

console.log(sum(range(1, 10)));
console.log(sum(range(1, 10, 2)));
