## Why?

To simplify publishing online content.


## What?

> "*Harp is a* ***static web server*** with ***built-in preprocessing***" ~ http://harpjs.com

Or in *English*: harp lets you build websites with easy tools
(*but still requires you to write some code...*)

## How?

### Installation

![why sudo install?](https://raw.githubusercontent.com/nelsonic/nelsonic.github.io/master/img/harp-encourages-sudo-install.png)

I was *immediately* ***put off by*** the fact that Harp.js encourages people
to install their module using ***sudo***!

Thankfully, the install *does* work *without sudo*.

```sh
npm install harp -g
```

(The module creators/maintainers have probably just included the
sudo to avoid getting more "*unable to install...*" issues)

![works without sudo](https://raw.githubusercontent.com/nelsonic/nelsonic.github.io/master/img/harp--npm-install-harp-g.png)

### Initialise

if you try to init in an *existing* directory, you get an error:

![does not work for existing blogs](https://raw.githubusercontent.com/nelsonic/nelsonic.github.io/master/img/harp-does-not-work-for-existing-blogs.png)

So you need to *specify* the name of a *new* directory:

![harp init](https://raw.githubusercontent.com/nelsonic/nelsonic.github.io/master/img/harp-init-nelsonic.png)


That will create a directory with the following files:

![harp init creates files](https://raw.githubusercontent.com/nelsonic/nelsonic.github.io/master/img/harp-defaults-to-using-jade-and-less.png)


### Quick Start

The quick start video spends most of the time showing people how to install node.js ... then only goes thru the first step of starting with harp. hardly an introduction...

http://harpjs.com/docs/quick-start

(also their [youtube chanel](https://www.youtube.com/channel/UCjMFLksOOahVB0xCupy8oeA/videos) has exactly *one* video which was uploaded in *Dec 2013* ...)
