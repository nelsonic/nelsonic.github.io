# Should We Rent or Buy Server Resources

> When *does* it make sense to ***own*** your hardware...?

![rent-or-buy](http://i.imgur.com/o0S7u1I.jpg)

***Re-visiting*** the ***rent vs. buy discussion*** was prompted by the recent
announcement by Amazon  
of just how *much* cash they are making from Amazon WebServices (AWS):

![AWS Cash Cow](http://i.imgur.com/FNMaiL6.png)

The fact that Amazon is making *so much* revenue (*profit*!) from AWS
should come as *no* "*surprise*" to anyone who has *used* the service.  
AWS has reached their status as industry leader because they have (built) the
*best*
(most feature-rich/complete) cloud services platform (*by far*).

However given the recent *surge* in popularity/success of DigitalOcean (*DO*),
its clear some people are looking for a more bare-bones service focussing just
on the primary considerations of RAM, CPU, Storage & Bandwidth.
(As evidenced by DO's focus on these 4 variables on their pricing page)


## Why?

@dwylio we (*try to*) ***solve real world problems*** by building software applications (*apps*).
Where we chose to host those applications is still an **open question**.

## What do we need in a Server?

The primary constraints for a web/application/database server are:

1. **RAM** - Where (*fast-access*) Data and Execution State are stored.
2. **Processor**(s) having more CPUs running at a faster (clock) speed means
processing of requests is done in less time.
3. **Bandwidth** - how much data throughput can we handle?
4. **Network Latency** - Time taken between the client/browser issuing the request
and it us responding to it.
5. **Storage** - space to store images & videos uploaded by people using the apps
(we are using S3 until further notice, that's why this is low on the list)

Having **more RAM** means we can **serve** our **content/applications** ***faster***.

Most startups rent their computing resources from Amazon because there are no "*up front" costs.

It ***pains* me** to pay AmazonWebServices or DigitalOcean *insane* amounts of money
to ***RENT*** virtualized resources.

### Our Most Important Consideration(s)

Beyond Price, Availability, Simplicity and Speed there are a few other
considerations which get over-looked when making infrastructure decisions.

#### Environment

Almost ***always overlooked*** by other articles on
infrastructure (and companies using cloud services) is the
***environmental record*** of the service provider.

We have been using [**ecotricity**](http://www.ecotricity.co.uk/) for the past
5 years @dwylHQ and our plan is to buy the renewable energy credits to power
all our server resources.

And... Coreix (our preferred Colocation partner) is committed to
Environmental sustainability: http://www.coreix.net/aboutus/commitments_environment

#### Data Privacy

The 3-Letter Agencies are know to use AWS.  
Which means they have access to the instances you are running on.
Even with the best security settings and monitoring if you are storing anything
interesting, they still have an *army* of people (*litterally*) to work on accessing the servers other people are running in AWS ...  
I'm not suggesting that using a Colo Service instead of Cloud is "*more secure*"
just because its not running in the same Datacenter as the NSA...
The fact that the Colo provides space to *anyone* means the agency could just
as easily set up their own cluster in the Colo *dedicated* to penetrating your
system...  
But... if you are running your app on ***bare metal*** and have  [**DMZ**](http://en.wikipedia.org/wiki/DMZ_%28computing%29) between you and the
rest of the Colo nodes, you can approximate higher security.

## DigitalOcean

Digital Ocean Pricing: https://www.digitalocean.com/pricing/
![DigitalOcean Pricing](http://i.imgur.com/7t94n3a.png)

Using the **Max** DigitalOcean Instance 64GB

Total: $640 x 12 months = $**7,680** or [**£5,056**](https://www.google.co.uk/webhp?#q=7680+usd+in+gbp) ***per year***.

## AWS

![amazon webservices high memory instances](http://i.imgur.com/wtGhvW7.png)

$4,132 (to reserve the instance) then $0.104 per hour (x24 x365 or $911.04 per year)

Total: $4,132 + $911 = $**5,043** or [**£3,329**](https://www.google.co.uk/webhp?#q=5056+usd+in+gbp) ***per year***.

Now, your DevOps person will say: you don't need to pay the $0.104 around the clock because you can
scale dynamically, and they are 100% correct, except that using an **In-Memory Database** (Redis)
means we would either need to write the data to disk each time we want to power down the server to save money,
and then spend time re-loading the DB into RAM.
And... unless your in-memory database allows you to read from Disk (EBS) you could easily
(*temporarily*) *misplace* a person's data...

Just the cost of reserving the AWS EC2 instance is the more than the ***TOTAL*** cost of **BUYING**
the hardware and colocating it!

## *BUY Hardware* and Colocate it in an Environmentally Friendly DataCenter ?

We can **BUY** a **1U Server** for **£1,299** with the following **spec**:

+ 2 x X5660 Xeon Six-Core CPU (12 Core)
+ 2.2GHz Processor Speed
+ 64GB RAM
+ 3 x 900GB 10K SAS Hard Drives (we would sub these for SSDs - Up to 6 x 2.5" HDDs)
+ Embedded Broadcom 5709C Quad-Port GB Network (4 x Ports)
+ Dual Redundant Power Supplies (2xPSU)

![buy 64gb 1u server](http://i.imgur.com/EjV82Xq.png)

> see: http://www.etb-tech.com/poweredge-m1000e-blades-enclosure-with-8-x-m710-blades-1853.html

Then pay **£50 per month** for **Colocation** in London - £50 x 12 = £600 per year!

http://www.coreix.net/colocation/shared

[![colocation spec](http://i.imgur.com/ok4648i.png)](http://www.coreix.net/colocation/shared)

Total: £600 + £1,299 = £1,900 if we ***BUY*** our hardware and only **RENT** the Space/Power/Bandwidth.
And the rack space rental gets *cheaper* as we scale!

I know talk of ***buying*** **hardware** is practically ***Taboo*** in the startup world.
But there's a *reason* **Facebook** have cleaned up in the photo-sharing game.


## Does it make sense to *host files* (or use S3) ?


### Store Files on S3

Amazon S3 pricing is: http://aws.amazon.com/s3/pricing/

![Amazon S3 pricing](http://i.imgur.com/9chOtLG.png)

$0.0300 per GB * 1000 = $30 per month for 1Tb.

It only makes sense to own hardware (for file storage)

in the short-run it ***clearly*** *does* ***NOT*** make sense to host files (e.g. images/videos)
on our own hardware.

But... at what point *does* it make sense to buy a SAN...?


### Store/Serve Files on (colocated) SAN

Buying a **basic** (but *good*!) Storage Area Network (SAN) Server would set us back:
£2,360 (without any hard drives...)

![buy SAN server](http://i.imgur.com/vDd7Ksd.png)

If we add 10 hard drives and some RAM the price goes up to: £4,317

![SAN server with RAM and 10 drives](http://i.imgur.com/Nr3KHEm.png)

The Hard drives
http://www.raid-calculator.com/default.aspx

![raid calculator 10 x 3 Tb disks](http://i.imgur.com/bp2hhCn.png)


Installing 10 x 3Tb drives will give us 24,000 Gb of RAID 6.
The **colocation space** for this 4U SAN would be ***£200 per month***.
So first-year-cost would be:

Total: £4,317 (up front) + £200 x 12 months = £**6,717**

Equivalent price per Gb: £6,717/24,000 = **0.28p per Gb** ***per year***!

#### Can we get the cost down?

Can we make the cost per Gb of storage go down by maximising the amount stored in the SAN?

Putting **24** x **3TB** hard drives £**6,249** (*up front*)

![Buy SAN with 24 3TB drives](http://i.imgur.com/bSqUjIV.png)

Same **colocation costs** (£200 per month) or £**2,400 per year**.

![24 3Tb drives at RAID 6 is 66,000 Gb](http://i.imgur.com/Fo5Lk28.png)

This would give us **66,000 Gb** of **file storage**

If we [*amortize*](http://en.wikipedia.org/wiki/Amortization) the hardware cost over 3 years we get: £6,249 / 3 = or £**2,083** ***per year***

so... £**2,400** + £**2,083** = £**4,483** ***per year*** for 66Tb

Price per Gb: £4,483/66,000 = **0.06792p** *per* **Gb** ***per year***!
or £**0.00566** *per* **Gb** ***per month***

## So *WHY* does NetFlix or DropBox *Still* Use S3...?

Given this *significantly* lower cost per Gb stored?
The answer is **simple**: ***bandwidth costs***...!

So... we may need to re-visit this in 12 months time and factor in the bandwidth costs... ;-)
(*Lets get* ***back to work***!)

# > TODO:

+ [ ] High Availability - how many Datacenters do we need to use to have high
availability?
+ [ ] Encryption for intra-zone-communication
+ [ ] ElasticSearch Full-Disk Encryption?
+ [ ] IPTables/Firewall rules
+ [ ] Intra-Zone Loadbalancing? or DNS Round-robin?
+ [ ] Inter-continental Latency: http://ippm.bt.net/hour/europe/lo.shtml &
http://ipnetwork.bgtmo.ip.att.net/pws/global_network_avgs.html




## Notes

### Background Reading

+ Amazon Web Services History:
http://en.wikipedia.org/wiki/Amazon_Web_Services#History
+ Digital Ocean overview:
http://techcrunch.com/2013/06/27/digitalocean-wants-to-challenge-amazon-linode-and-co-with-better-prices-marketing-and-focus-on-simplicity/
+ Mark says it and everyone (340,073) laps it up:
https://www.facebook.com/zuck/posts/10100828955847631
("*We hadn't even heard of PRISM*"... lol!
http://gawker.com/5636765/facebook-ceo-admits-to-calling-users-dumb-fucks)

### Environmental Policy?

Servers are notoriously power-hungry. Each "blade" uses between 500w and 2kw.
and most hosting/"cloud" service providers have *thousands* of them!
Where they do not *explicitly* state that their commitment to renewable energy,
we can only conclude that they are using the "*cheapest*"

+ AMZN's environmental (lip-service) policy:
http://www.amazon.com/b?&node=13786321
+ DigitalOcean Environment Policy? (*does not exist*!):
https://www.google.co.uk/search?q=digital%20ocean%20environment%20policy
![digitalocean environment policy](http://i.imgur.com/Gwq4ewE.png)


### AWS Sales/Profitability

+ Overview: http://www.bbc.co.uk/news/business-32442268
+ Analysis: http://seekingalpha.com/article/3099716-amazon-10-implications-of-a-profitable-aws
+ http://online.barrons.com/articles/amazon-reveals-just-how-profitable-the-cloud-can-be-1429932877

### Storage Costs

+ How much to store 1tb in the cloud:
http://www.digitalfirst.com/2011/12/04/how-much-to-backup-1tb-in-the-cloud/

### Virtualization

+ XEN: http://www.xenproject.org/developers/teams/hypervisor.html
+ vSphere Hypervisor: http://www.vmware.com/uk/products/vsphere-hypervisor

### High Availability (*HA*)

+ General Info: http://en.wikipedia.org/wiki/High_availability
+ HA Cluster: http://en.wikipedia.org/wiki/High-availability_cluster
+ ***Practical Knowledge/Insight***: http://highscalability.com/blog/category/example
+ **Node.js** High Availability: http://stackoverflow.com/questions/7259232/how-to-deploy-node-js-in-cloud-for-high-availability-using-multi-core-reverse-p
+ High availability at Box (node.js):
https://www.box.com/blog/node-js-high-availability-at-box/
+ Ensuring high availability:
http://searchdatacenter.techtarget.com/tip/Ensuring-high-availability-in-the-data-center
+ Cisco Guide to Designing Data Center High Availability Clusters:
http://www.cisco.com/c/en/us/td/docs/solutions/Enterprise/Data_Center/HA_Clusters/HA_Clusters/HAOver_1.html
+ DNS Round Robin:
http://serverfault.com/questions/69870/multiple-data-centers-and-http-traffic-dns-round-robin-is-the-only-way-to-assur
+ Insight into Atlassian's Data Center Pricing:
https://www.atlassian.com/enterprise/data-center
+ Latency east-->west coast:
http://serverfault.com/questions/137348/how-much-network-latency-is-typical-for-east-west-coast-usa
+ How to configure DNS Round-Robin:
https://www.digitalocean.com/community/tutorials/how-to-configure-dns-round-robin-load-balancing-for-high-availability

### CIA/NSA Use AWS

+ The Details About the CIA's Deal With Amazon: http://www.theatlantic.com/technology/archive/2014/07/the-details-about-the-cias-deal-with-amazon/374632/


### Previous Research

Last time I did "*research*" into Traditional VPS Hosting vs. Cloud was in 2011
at the time the conclusion was clear: AWS all the way!

![nelson's web hosting research 2011](http://i.imgur.com/1apKkt3.png)

![nelson's web hosting research 2011 cloud](http://i.imgur.com/vefhsc8.png)

https://docs.google.com/spreadsheet/ccc?key=0AkmmpUXfYlybdHoyakFXSXZKcWM2Nzc4dUgtUlU5UWc
