# Why (_NOT_) ?

Until now we have _not_ made building CMS-based (_content-heavy_) websites a "_priority_" for DWYL (_the web development agency_). This has been a **_deliberate_ decision** based on our feeling that content websites are the "donkey work" of the web development world and _anyone_ can _throw_ together a WordPress site with a (_slightly_) customised Theme from https://themeforest.net and call themselves a "Web Agency". It's a "race to the bottom" where the devs all "cut corners" to "stay competitive" and we don't want _any_ part of it.

We _know_ this because we _built_ a "_enough_" CMS-based websites over the years (_2009 - 2012_) using WordPress, Drupal, Django etc. and handed the work over to clients only for them to hire lowest-bidder people to extend/update their site and then weeks/months later we receive a call along the lines of "_help everything is broken and we lost all our content_" ...
to which we would reply: "have you tried restoring from a recent backup?"
which is when they answer: "oh, `{name-of-cheapest-dev}` disabled the automatic backup script because the backups were taking up too much space on the server..."
i.e: "_we weren't having any accidents so we decided to remove the safety belts in our car ..._"🤦‍♂️

Not to sound/be disrespectful to any WP devs/"shops" who take pride in their work and treat it as a "craft", just that _most_ WP sites are _not_ the _paragon_ of craftsmanship ...
WP sites _rarely_ have any quality control, content backups or consideration of [PII](https://en.wikipedia.org/wiki/Personally_identifiable_information) safeguarding,
_often_ have ***security vulnerabilities*** and _never_ have tests.
_Most_ WP devs people hire on "UpWork" will do the _bare minimum_ to satisfy (_satisfice_) the task,
collect their coins and not give it another _thought_. WP "work" usually involves copy-pasting from forums/StackOverflow without _understanding_ what a piece/line of code _does_ and over time the project quality decays at an _accelerating_ rate over time ultimately leading to _catastrophic failure_. i.e. websites that are so slow that bounce/abandonment rate is north of 90%.

**Example**: We created http://deynsford.org back in 2011 when we moved to the D'Eynsford Estate in London. WP was the _fastest_ way to get the project launched and _useful_ at the time.
We had a couple of years WP [XP](https://en.wikipedia.org/wiki/Experience_point) and got the site up in an afternoon including SSL for secure logins, email newsletter, "wp-cache" and automated backups.
The WP site worked as expected for the 4 years we ran/hosted it, we kept all plugins and core "up-to-date" and had good access controls/roles, security and broad user satisfaction.
(You would be surprised at how many "CMS-based agencies" still do not provide these _basic_ "hygiene factors" as part of their service).
We handed over running/maintaining the site  in 2015 when the Organisation was formally incorporated and it has been managed by https://www.radikls.com ever since.
They have done the _bare minimum_ to keep the site "up" but _cut corners_ wherever they can ...
I don't want to point out _specific_ (_easily exploitable_) security vulnerabilities in the http://deynsford.org website because we know (_many lovely_) people (_our old neighbours_) whose _personal_ data is stored in the WP (MySQL) DB which any attacker can compromise (_despite our repeated efforts to inform the Admins to follow best practice ..._)
but the URL bar should tell you _all_ you need to know:

![image](https://user-images.githubusercontent.com/194400/45398997-567c1480-b63e-11e8-9076-8fceaffec5b5.png)

Having a WP site that doesn't use HTTP**S** for `wp-login` or `wp-admin`
is the online equivalent of leaving the front-door key under the mat.

Without saying any "bad things" about radikls, because it's "unprofessional" to "dis" anyone,
you judge for _yourself_ if you would want them to be your "partner" in building your "brand" online ...
![radikls-got-errors](https://user-images.githubusercontent.com/194400/45399437-e4a4ca80-b63f-11e8-9456-610ce709bbbd.png "click to zoom and view this marvel in all it's glory!")
Let's just say they _aren't_ using GitHub to manage their code, deploying using continuous integration or writing tutorials on Test Driven Development to "raise the bar" in the industry ... 🙄

To put it _mildly_: I would rather become a [waste collector](https://en.wikipedia.org/wiki/Waste_collector) on _minimum_ wage (_but doing a job with integrity!_) than build another website with WordPress in the knowledge that a lowest-common-denominator work-shy ["internet genius"](https://www.urbandictionary.com/define.php?term=internet%20genius) was going to take-over the project and run it into the ground ...
![image](https://user-images.githubusercontent.com/194400/45399767-4580d280-b641-11e8-8c73-7be49e2b9e63.png)
Building Websites with WordPress is a _good_ way to make an _average_ living delivering _average_ results. The client has an "admin panel" and can "edit their own content" but has to keep coming back to you for _everything_. It's _guaranteed_ income for the life of the project!

@dwyl we have always believed in _delivering_ the best work we can within the shortest timeframe
with "best in class" systems in place to ensure that the Apps/Sites we build continue working flawlessly _long_ after our last invoice has been paid: including version control, extensive _automated_ testing and continuous integration.
We take all of these things for granted because they are "baseline" for us,
but _most_ of the CMS-based agencies out there still copy-paste code into a _production_ (LAMP) website (_no notion of a separate "staging" environment to test things before deploying_!)
no backups (_because why would anyone need a "safety net"?_) and are _surprised_ when it all goes _horribly_ wrong!

The _reason_ we have avoided building CMS-based websites using the likes of WordPress
(_note: I'm not trying to "pick on" WP here, other CMSes are just as bad!_)
Is because we don't want to be mentioned in the same _sentence_ as _most_ CMS agencies
never mind "compete" with them for a "pitch".

The _problem_ is that most decision makers cannot distinguish between a hand-crafted
high-quality product and a shoddy imitation.  

![image](https://user-images.githubusercontent.com/194400/45400692-09e80780-b645-11e8-8e34-eeb91eeb9f08.png)

I'm not _suggesting_ that we are making Rolex watches (_or charging those kinds of prices!_)
we are more akin to the "Tudor" of watches https://en.wikipedia.org/wiki/Tudor_Watches
we are delivering _disproportionately_ high quality relative to the prices we charge,
we have the highest standards of quality control and reliability without the **celebrity endorsements** which lead to _silly_ prices.

![image](https://user-images.githubusercontent.com/194400/45400814-a7433b80-b645-11e8-9199-3e7f47bf0aca.png)

### But ... @dwyl has built _several_ CMC-based sites in the last couple of years ...

Yes, We have (_at the request of our clients_) built content-heavy websites in the last couple of years
using Wagtail CMS https://wagtail.io and while those clients have been _content_ (_see what I did there?_) with the results, I cannot help but feel that it's because their _expectations_ were _unduly_ low (_mostly because the client's previous "web partners" under-delivered so spectacularly_!) ...
While the efforts/work of the individual (@dwyl) developer has been _commendable_ the end-result has been _lacklustre_ because the requirements (_defined by stakeholders_) were _unambitious_.

I prefer _not_ to link to the CMS-based projects we _have_ recently built as @dwyl (_the agency_)
for ***two reasons***:
1. the client(s) are all happy with their site(s) and everything is _tickety-boo_
2. I don't want _anyone_ who _worked_ on those projects to feel like I'm "criticising" them.

But suffice to say I (Nelson) feel that _some_ of our recent work is "Silver Medal" standard ... 🥈
![image](https://user-images.githubusercontent.com/194400/45401464-a19b2500-b648-11e8-80b0-e2da69b84683.png)
"_Good enough_" but not "_outstanding_". 🥇

Not because the input of the individual dev/UX person was "bad", on the _contrary_,
just that there was no "_let's make this the best it possibly can be_" attitude from _everyone_ involved.
Disappointingly (_to me_) several projects fell into the "trap" of reducing "wow" because
"there is no budget" to build XYZ feature or "that's a "nice to have" feature ..."
and as a result there have been few "Webby" worth projects.

That is about to [change](https://youtu.be/eXvBjCO19QY)


# The _Need_

There is _no shortage_ of _demand_ for content-based websites.
Every single one of our _existing_ clients has a CMS of some description
and _all_ websites worth visiting have some form of content _by definition_.

The _existing_/_available_ array of CMS options is "OK" ...
They are akin to the Nokia "flip" phones of 2006:
![nokia-phone](https://user-images.githubusercontent.com/194400/45401061-dad29580-b646-11e8-9df1-2f40549d0831.png)
They serve their intended purpose, have "good design"  and even have a "dedicated camera button",
but they don't have any "_wow_" factor built-in.

![iphone-introduction](https://cloud.githubusercontent.com/assets/194400/22934275/4bc76090-f2c6-11e6-9b90-91226e39ea09.png)

_Average_ People didn't _know_ they _needed_ an iPhone until Steve _Showed_ them one.
And back in 2007 "only" the "early adopters" bought the iPhone Gen 1
when iPhone was as slow as tired dog, had 2MP camera with no flash,
no 3G connectivity or "copy paste" facility.
I _gleefully_ ordered one, jail-broke it and used it _relentlessly_; it was _game-changing_.
![image](https://user-images.githubusercontent.com/194400/45402181-42d7aa80-b64c-11e8-8710-5e5d2031fc80.png)

My crackberry-wielding 💉  colleagues mocked me for spending $599 on a "glorified iPod" ...
they _all_ use iPhones now. 📱


# (_Golden_) _Opportunity_

![golden-opportunity](https://camo.githubusercontent.com/7b6425e7c5bbbb9f01a4a3553d1ba6659c3c7b2b/687474703a2f2f692e696d6775722e636f6d2f553661355343682e6a7067)

We have a chance to build a
1<sup>st</sup> Generation iPhone https://en.wikipedia.org/wiki/IPhone_(1st_generation)


[![image](https://user-images.githubusercontent.com/194400/45403639-63efc980-b653-11e8-908a-640d21799a86.png)](https://youtu.be/w4OdIOGBW2Q?t=2m44s)
