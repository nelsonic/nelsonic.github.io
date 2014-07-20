var colors = require('colors');
// console.log(colors);
console.log('hello'.red);
var str = '';
for(var i = 0; i<1000000; i++){
  str += Math.floor(Math.random()*32).toString(2);
}
str.replace('0', ' ')
console.log(str);
