function mini(a, b) {
  if (a > b) {
    return b;
  } else if (a < b) {
    return a;
  } else {
    return "they are equal";
  }
}

console.log(mini(3, 5));
console.log(mini(44, 7));
console.log(mini(4, 4));
