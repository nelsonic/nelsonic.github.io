This relates to: https://github.com/healthlocker/healthlocker/issues/122

@katyedwards **progress** on ***accessing*** the **ePJS** data in Healthlocker is **`blocked`** by SLaM IT
since 12<sup>th</sup> April 2017 and there does not appear to be any movement/news from `Stuart`. 😞

> _So_ ... until some **progress** on getting access to ePJS data is made on **SLaM IT's side**,
I am _unassigning_ myself from this issue so it does not appear on my "Todo" List.
(_Note: I'm unassigning not because I don't want to see it `done`, but cause it is **out of my control**_)

# tl;dr (_Summary So Far_)

Over the course of this project the "_Plan_" for getting access to ePJS data has changed ***five*** times:

## 1. "Advanced" _Promised_ to Make an API Available in January 2017

When we "_signed up_" to build the project it was on the understanding that the API would be delivered in January. When that deadline _flew_ by we shifted to "Plan B" (_Number 2 below_).

> Building/Shipping an API is _not_ the most technically complex thing.
"Advanced" have really made the API into a _mountain_ ... when it _really_ didn't need to be.
![image](https://cloud.githubusercontent.com/assets/194400/26454016/a42d9eb2-415d-11e7-9b98-c7a92e75b96b.png)
But this is not the place/time to discuss their development/release process.
Suffice to say they are more focussed on Profits than the end-user which makes us _super_ sad.

## 2. `Garry` Offered to give us a "Zip" (_Snapshot_) of the Data

We _gladly_ accepted this offer as it had the _potential_ to speed up our access to the ePJS data
so we could _ship_ the App to the service users!

### Obstacles Faced _Attempting_ to Import the ePJS Data Zip

1. **Data format**: rather than exporting the data as a `.csv` the data was exported in the "_proprietary_" Microsoft SQL Server `.bak` format. Microsoft _deliberately_ because they don't _want_ people to be _able_ to view/use the file without having (_paying for!_) Microsoft SQL Server/Studio. (_Classic Microsoft Vendor Lock-in!_). This meant that we had to use our "Test" Windows Machine<sup>1</sup> to _attempt_ to import/view the data ... We _deliberately_ "Don't Trust" the Windows Machine<sup>1</sup> so had to install a new Windows OS for this task; _another hour wasted_.

2. ***Version of Microsoft SQL Server*** used by SLaM: We were _not_ informed as to the _version_ of MS SQL that is used for ePJS so after **_several_ hours** of installing a _bunch_ of different versions and variants 2017, 2016, 2014, 2012, 2010 @pm5k informed us that we needed version 2008. Which is not available on the Microsoft Website (_because it's obsolete!_) ... Tom kindly gave us a copy that he found somewhere online so we were _eventually_ able to import the data given to us by Gary. (_this could/should have been a 1h (MAX) task but it took **days**_)

3. **ePJS is 5K+ Database Tables**! This can be difficult to _picture_, but it's akin to having 5k drawers in your closet and you need to _manually_ open each one to see what's inside while getting dressed in the morning. _Sure_ eventually you may become familiar with the contents but when _first_ presented with this situation it's not a "_delight_".

4. **Azure Does not _Allow_ Restoring an SQL Database uploaded from "Old" Version** on
_Yes_, Azure has [instructions](https://docs.microsoft.com/en-us/azure/sql-database/sql-database-recovery-using-backups) for how restore a backup of an SQL database, but what they _don't_ tell you is that they do not support _uploading_ a `.bak` file

<sup>1</sup>We don't use Microsoft Windows @dwyl because of [Security Concerns](https://www.ft.com/content/d2f3f04e-6ccf-11df-91c8-00144feab49a) and we think the NHS should have ditched Windows a _long_ time ago. They could _easily_ have avoided the recent ["Ransomware" Attack](http://www.telegraph.co.uk/news/2017/05/12/nhs-hit-major-cyber-attack-hackers-demanding-ransom), and that is the one that made the "news", _many_ more viruses/breaches that don't get mentioned in the (_mainstream_) "news media".
https://www.digitalhealth.net/2017/01/exclusive-health-data-breaches-on-the-rise
