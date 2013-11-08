# MySQL Recovery

## Background (How we got here...)

This morning I woke up to a *panicked* email from a friend whose site had 
"*died*" and needed help recovering it...

![Site Offline](http://i.imgur.com/DTRLMP9.png "Drupal Site Offline")

Yes, a Drupal (LAMP) site! (*How Retro!* I hear you say...)
*Fact is* just under 1 Million Websites still run on Drupal!
Including http://grammy.com, http://weforum.org, http://teslamotors.com,
https://dev.twitter.com/ and http://zynga.com/ !!
See:
- Usage Stats: https://drupal.org/project/usage
- 18k of the top 1M Websites run Drupal! http://trends.builtwith.com/cms/Drupal
- 20 Biggest/Best Drupal Sites: http://www.flashmint.com/wp/2012/08/20-best-drupal-sites-of-2012/

I wouldn't advise *anyone* to use Drupal (or any other "*LAMP*" stack) in 2013!
But, there is an a*weful* lot of *legacy* web out there which is "*not broke*"
so there is "no budget" to upgrade to a better system...

So, long story short, I find myself having to travel back into my past and
do a bit of MySQL (LAMP) *detective work*!

## Forensics: SSH into Server to Diagnose the Issue

