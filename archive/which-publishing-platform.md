# Publishing Platform

## Why is Testing Important?

>> this deserves its own post... :-)
> for now refer to the "Rant" section at the end of my Mocha Tutorial:
> https://github.com/nelsonic/learn-mocha

## What is Wrong with my LAMP? and Isn't PHP What *Everyone* is Using?

I've used *many* publishing platforms and not found one I **love**.
*Undeniably* the **most popular** publishing (blogging) platfomr is 
Wordpress.com. 14% of the Top 1 Million (most visited) websites are
running on Wordpress! http://trends.builtwith.com/cms/WordPress

When we consider **PHP** as *whole*, it still accounts for 39% of the top 1M!
![PHP Dominates the Web](http://i.imgur.com/i9lokEE.png "PHP Still Dominates!")
http://trends.builtwith.com/framework

### Facts

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

Does this mean its hard or "impossible" to test 

#### Read More

- http://arstechnica.com/security/2013/10/hackers-compromise-official-php-website-infect-visitors-with-malware/
- http://me.veekun.com/blog/2012/04/09/php-a-fractal-of-bad-design/#security
- http://www.cvedetails.com/product/128/PHP-PHP.html?vendor_id=74


Some of the better ones

## List of *Gripes* with Existing Platforms

- Steep learning curve (e.g. Drupal!)
- Security Bugs *Galore*!
- Installation 
- Lack of Unit/Regression Testing (new "features" *break* old ones!)
- Upgrade/Patching
- Tedious Package Management systems with poor version control




## List of Required Features

- Create and Edit Content in the Simplest possible way.
- [WCAG](http://www.w3.org/TR/WCAG/) **Standards Compliant**
- Extensively (Self) Documented
- Built-in Training (you can only use the features you *learn* how to use).
- Easy to get started! Bite-size 30sec tutorials for each feature.
- Sensible Safety Nets and Sandboxes for Learners
- Intuitive Navigation
- Search any/all content out of the box
- **Security** Focussed
- Every Line of Code is Tested and Re-Tested each time any change is made!
- **Everything** is **Version Controlled**
- **No** Download or **Installation**
- **Offline Mode** using HTML5 Local Storage
- Simple **Intuitive** content (&code) **Editor** that stays out of the way!
- **Colloborative Creation**
- Easily Change **Themes** (Look-and-Feel)
- **Mobile** by **Default** (no extra work to make it work on mobile!)
- **Spell Check** with suggestions and dictionary!!
- **Translation** to any language (on-the-fly)
- Simple/Seamless (Automatic) **Backup** of **ALL** Content
- Intelligent **Comment**/**Discussions** on content (with *fast* moderation)
- **Realtime Interaction** (see who else is online to know who you can chat/collaborate with)



## Research

A few articles on 

- How to **chose** a blogging platform: https://blog.shareaholic.com/best-blogging-platform/
- 15 **Best Blogging Platforms**: http://thenextweb.com/apps/2013/08/16/best-blogging-services/





>> I started working on this a few years back but kept it to myself:
https://docs.google.com/document/d/1QxVNyiuaPcZSe4qyFUejTQ84AYlcCOR0gVPrXLOy3po

### List of Web Publishing Platforms/Frameworks I've Used

- Blogger: http://www.blogger.com/features
- Tumbler: http://www.tumblr.com/about
- Medium: https://medium.com/product-design/8eb1b4a4d90c
- Wordpress (.org/.com): http://wordpress.org/about/features/
- Drupal: https://drupal.org/about
- Joomla: http://www.joomla.org/about-joomla.html
- Ghost: https://ghost.org/features/
- Squarespace: http://www.squarespace.com/tour/overview/
- Ruby-on-Rails: http://rubyonrails.org/
- Django: https://www.djangoproject.com/
- Express: http://expressjs.com/
- AngularJS (for apps): http://angularjs.org/
- BackboneJS (also for web apps): http://documentcloud.github.io/backbone/