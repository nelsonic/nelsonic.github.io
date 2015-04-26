# Rent vs Buy Server Resources

Having **more RAM** means we can **serve** our **content/applications** ***faster***.

Most startups rent their computing resources from Amazon because there are no "*up front" costs.

It ***pains* me** to pay AmazonWebServices or DigitalOcean *insane* amounts of money
to ***RENT*** virtualised resources.

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



By contrast, we can **BUY** a **1U Server** for **£1,299** with the following **spec**:

+ 2 x X5660 Xeon Six-Core CPU (12 Core)
+ 2.2GHz Processor Speed
+ 64GB RAM
+ 3 x 900GB 10K SAS Hard Drives (we would sub these for SSDs - Up to 6 x 2.5" HDDs)
+ Embedded Broadcom 5709C Quad-Port GB Network (4 x Ports)
+ Dual Redundant Power Supplies (2xPSU)

![buy 64gb 1u server](http://i.imgur.com/EjV82Xq.png)

Then pay **£50 per month** for **Colocation** in London - £50 x 12 = £600 per year!

http://www.coreix.net/colocation/shared

![colocation spec](http://i.imgur.com/ok4648i.png)

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

## Notes

+ How much to store 1tb in the cloud:
http://www.digitalfirst.com/2011/12/04/how-much-to-backup-1tb-in-the-cloud/