function countChar(str, char) {
  var char_count = 0;
  for (x=0; x <= (str.length); x++) {
    if (str.charAt(x) == char) {
      char_count++;
    }
  }
  return char_count;
}

console.log(countChar("BBC", "B"));
console.log(countChar("kakkerlak", "k"));
