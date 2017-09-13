## What is Cross Site Scripting (XSS)

Cross-Site Scripting (commonly know as XSS) is the 2nd most common 
web security vulnerability. XSS vulnerabilities embed scripts in a page 
which are executed on the client/browser rather than on the server. 
XSS vulnerabilities allow a malicious user to steal sensative data 
(such as session tokens/cookies) and perform actions unintended by the
user (such as downloading/installing malware).

- Basic explanation (video): http://youtu.be/t161cahMAZc
- OWASP intro: https://www.owasp.org/index.php/Cross-site_Scripting_(XSS)

## How does it affect me?

If you use websites that are not security-concious your browsing session
can be highjacked and data leaked to the attacker.
This could be something as simple as the attacker being able to impersonate
you on a forum (post comments etc.) but could be much worse e.g:
the attacker crafts an ajax request to change your email and password 
on the site thus locking you out of your account. :-(

## How can we prevent it in our web apps?

Follow these rules when building your app/framework:
https://www.owasp.org/index.php/XSS_(Cross_Site_Scripting)_Prevention_Cheat_Sheet#XSS_Prevention_Rules

## Further Reading

- XSS Wiki article: http://en.wikipedia.org/wiki/Cross-site_scripting
- Extended (good) explanation: http://www.acunetix.com/websitesecurity/cross-site-scripting/
- Veracode overview: http://www.veracode.com/security/xss
- XSS Prevention cheat sheet: https://www.owasp.org/index.php/XSS_(Cross_Site_Scripting)_Prevention_Cheat_Sheet