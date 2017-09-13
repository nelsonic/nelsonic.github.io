var crypto = require('crypto'),           // @input
	shasum = crypto.createHash('sha1').update("foo").digest('hex');
console.log(shasum);
// "0beec7b5ea3f0fdbc95d0dd47f3c5bc275da8a33"
// see: http://stackoverflow.com/questions/6984139/how-do-get-the-sha1-hash-of-a-string-in-nodejs