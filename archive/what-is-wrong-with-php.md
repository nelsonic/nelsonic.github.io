## What is Wrong with my LAMP? and Isn't PHP What *Everyone* is Using?

### Facts

PHP still accounts for 39% of the top 1M!
![PHP Dominates the Web](http://i.imgur.com/i9lokEE.png "PHP Still Dominates!")
http://trends.builtwith.com/framework

#### Pros:
- PHP made much of the web possible.
- PHP has incredibly **Low Barriers to Entry**
- Almost all hosting companies support PHP
- Facebook, Yahoo and Wikipedia all (*still*) run PHP (it *must* be good, right...?)

#### Cons:
- PHP Sites get Hacked (a *LOT*!)
- Virtually **no** PHP Frameworks have Built-in **Unit Testing**
- *Because* of the low barriers to entry there is a *lot* of *bad* PHP code!

If 38% of the top 1M websites use PHP why does the leading PHP Unit Testing 
Framework **PHPUnit** only have 3168 "stars" on GitHub?
![PHP Unit Testing](http://i.imgur.com/BkUoLQz.png "PHP Unit Testing GitHub")
https://github.com/sebastianbergmann/phpunit
(yes, it could be because fewer PHP developers *use* github
but that in its self is indicative that few use *version control* at all!)

By contrast [**Jasmine**](https://github.com/pivotal/jasmine) and 
[**Mocha**](https://github.com/visionmedia/mocha) 
(the **JavaScript** testing frameworks) 5744 and 3539 stars respectively!
This *alone* does not mean JavaScript is somehow "*better*" than PHP, 
its simply an *observation* that (at least *anecdotally*) fewer PHP developers
are *interested* in testing their code. 

Does this mean PHP code is "impossible" to test.
On one of my last PHP efforts @groupon I used PHPUnit:
https://github.com/nelsonic/evc
To *demonstrate* to the other develoeprs that its *possible* 
to Unit Test PHP Code! Did any of them listen or adopt Unit Testing...?

Answer: NO!
And that's *why* I moved to building apps inside Salesforce (where testing and
code-coverage requirements were enforced by the build system!)

My (personal) verdict: PHP is a 
[poison chalice](http://idioms.thefreedictionary.com/a+poisoned+chalice)
it has enabled many of the most successful websites to be built,
but its continued dominance ensures that the web remains a buggy, fragile
and unreliable place where bad people can continue to crack websites.

## Read More

- http://arstechnica.com/security/2013/10/hackers-compromise-official-php-website-infect-visitors-with-malware/
- http://me.veekun.com/blog/2012/04/09/php-a-fractal-of-bad-design/#security
- http://www.cvedetails.com/product/128/PHP-PHP.html?vendor_id=74