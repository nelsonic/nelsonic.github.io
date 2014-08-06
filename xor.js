var i = 0, j = 0, max= 63, str='';
 // str = ' 0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30\n';

for (var i = 0; i < max; ++i) {
  while(j < max){
  // console.log(i+'^'+j, i^j);
  var res = i^j;
  if(res < 10) {
    str += ' '+res +' ';
  } else {
    str += res +' ';
  }


  j++;
  }
  str += '\n';
  j = 0;
}
console.log(str);


// 0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20
// 1
// 2
// 3
