var colors = require('colors');
// console.log(colors);
console.log('hello'.red);
var str = '';
for(var i = 0; i<1000000; i++){
  str += Math.floor(Math.random()*32).toString(2).replace(/1/g , "8").replace(/0/g , "-");
}
// str;
console.log(str);
