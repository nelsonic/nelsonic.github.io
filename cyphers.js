var crypto = require('crypto');

hash = crypto.createHash('sha1').update("hello").digest('base64');
console.log("sha1   | " + hash + " | " + hash.length);

hash = crypto.createHash('sha256').update("hello").digest('base64');
console.log("sha256 | " + hash + " | " + hash.length);

hash = crypto.createHash('sha512').update("hello").digest('base64');
console.log("sha512 | " + hash + " | " + hash.length);
