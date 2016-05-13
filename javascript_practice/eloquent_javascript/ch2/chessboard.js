var size = 12;
var row = "";
for (x=1; x < (size/2); x++) {
  row += " X"
}

for (x=1; x < (size/2); x++) {
  console.log(row);
  console.log(row.split('').reverse().join(''));
}
