# Diving Into Node.js Util (Core) Module

Util is a utility module in node.js

> http://nodejs.org/api/util.html

## Source Code:
> https://github.com/joyent/node/blob/master/lib/util.js

## Usage

```javascript
var util = require('util')
console.log(util.inspect(console));

var util = require('util');
console.log(util.inspect({a:1, b:"b"}, false,2,true));
```

## Related Articles

- Using **util.inspect**: http://docs.nodejitsu.com/articles/getting-started/how-to-use-util-inspect

I got here because I was reading the source for Node's Assert module:
- http://nodejs.org/api/assert.html#assert_assert
- https://github.com/joyent/node/blob/master/lib/assert.js