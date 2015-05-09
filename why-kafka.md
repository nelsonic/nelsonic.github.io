
# A Million Writes Per Second

## What is Kafka?

Apache Kafka is an open-source message broker project developed by the
Apache Software Foundation written in Scala.
The project aims to provide a unified, high-throughput,
low-latency platform for handling real-time data feeds.


- http://en.wikipedia.org/wiki/Apache_Kafka
- http://kafka.apache.org/


## 2 Million Messages Per Second

- https://engineering.linkedin.com/kafka/benchmarking-apache-kafka-2-million-writes-second-three-cheap-machines
- http://engineering.linkedin.com/distributed-systems/log-what-every-software-engineer-should-know-about-real-time-datas-unifying


### "Cheap" Machines

> For these tests, I had six machines each has the following specs  
> - Intel Xeon 2.5 GHz processor with six cores  
> - Six 7200 RPM SATA drives  
> - 32GB of RAM  
> - 1Gb Ethernet  

#### Bare Metal

If you still buy *bare-metal* in 2014 you can get this kind of hardware for
[$1800 for each node](http://i.imgur.com/BTkyush.png)
in the cluster described.
The article used **6 nodes** so $10,800 + bandwidth + energy bills, ect.

#### Cloud (AWS EC2)

If you use Amazon EC2, you would need to use "Storage Optimized" **i2.8xlarge**
to get the same RAM/Throughput and those are **$6.820** ***per hour*** *per node*.
So to have 6 nodes it would be
- $40.92 per hour
- $982 per day
- $358,459 per year

(This is more of an indictment of how *extortionate* AWS is than anything else)

But you get the point, this setup is "cheap" if you are making tons of money
selling something useful to people (or in linkedin's case charging bank and
giving recruiters a way to spam people...)


### (*Artificially Low*) Message Size


- 100bytes: http://www.wolframalpha.com/input/?i=100+bytes
- How many bytes in a utf-8 character:
http://stackoverflow.com/questions/10229156/how-many-characters-are-there-in-utf-8


## Background

### Reading

> Start here: http://kafka.apache.org/documentation.html#introduction

- A Different Kind of Messaging System:
http://www.infoq.com/news/2013/12/apache-afka-messaging-system
- Real Time Streaming with Apache Storm & Kafka:
http://www.zdatainc.com/2014/07/real-time-streaming-apache-storm-apache-kafka
- Good intro presentation to Storm, Kafka & Trident:
http://www.slideshare.net/gschmutz/kafka-andstromeventprocessinginrealtime
-
http://www.slideshare.net/AmazonWebServices/infrastructure-at-scale-apache-kafka-twitter-storm-elastic-search-arc303-aws-reinvent-2013?related=1

### Video

- I ♥ Logs: Apache Kafka and Real-Time Data Integration
https://www.youtube.com/watch?v=aJuo_bLSW6s


## Kafka and Node.js

- https://github.com/cainus/Prozess
last updated 2 months ago. Build & 91% coverage. useable.
- https://github.com/wurstmeister/node-kafka-0.8-plus
Hasn't been updated in 11 months. has tests but no build or coverage info.
