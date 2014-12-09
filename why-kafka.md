
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

32GB

Firstly the machines are *not* "cheap".
If you bought bare-metal in 2014...

But if you use EC2, you would pay




### (*Artificially Low*) Message Size


- 100bytes: http://www.wolframalpha.com/input/?i=100+bytes
- How many bytes in a utf-8 character:
http://stackoverflow.com/questions/10229156/how-many-characters-are-there-in-utf-8
