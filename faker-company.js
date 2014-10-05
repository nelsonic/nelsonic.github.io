var faker = require('faker'); // https://github.com/Marak/faker.js
var buzzwords = []
for(var i = 0; i < 20; i++) {
	buzzwords.push(faker.company.bsBuzz());
}
console.log(buzzwords.join(' '));
