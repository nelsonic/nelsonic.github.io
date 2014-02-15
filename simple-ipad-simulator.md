Instead of *installing* an app to simulate the iPad viewport why not simply 
use an iFrame in your project's testing page to constrain the viewport on desktop?

Here's the code:

```html
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>iPad View</title>
  </head>
  <body>
    <iframe id="ipad" src="http://nelsonic.s3.amazonaws.com/range-touch/index.html" frameborder="0" width="1024" height="768"></iframe>

    <!-- add a bezel-like border to the iframe to simulate an ipad -->
    <style>
      iframe {
        z-index: 10;
        border: 40px solid black;
        border-radius: 40px;
        margin-left: 30px;
      }
    </style>
  </body>
</html>
```

And an example: http://nelsonic.s3.amazonaws.com/mobile-viewer/example/demo.html