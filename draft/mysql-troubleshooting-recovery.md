# MySQL Recovery

## Background (How we got here...)

This morning I woke up to a *panicked* email from a friend whose site had 
"*died*" and needed help recovering it...

![Site Offline](http://i.imgur.com/DTRLMP9.png "Drupal Site Offline")

Yes, a **Drupal** (LAMP) site! ("*How Retro!*" I hear you say...)
*Fact is* just under 1 Million Websites still run on Drupal!
Including http://grammy.com, http://weforum.org, http://teslamotors.com,
https://dev.twitter.com/ and http://zynga.com/ !!
See:
- Usage Stats: https://drupal.org/project/usage
- 18k of the top 1M Websites run Drupal! http://trends.builtwith.com/cms/Drupal
- 20 Biggest/Best Drupal Sites: http://www.flashmint.com/wp/2012/08/20-best-drupal-sites-of-2012/

I wouldn't advise *anyone* to use Drupal (or any other "*LAMP*" stack) in 2013!
But, there is an a*weful* lot of *legacy* web out there which is "*not broke*"
so there is "no budget" to upgrade to a better system... (until it is *broken*
and the site owners have no *idea* how to fix it!)

So, long story short, I find myself having to travel back into my past and
do a bit of MySQL (LAMP) *detective work*!

## Forensics: SSH into Server to Diagnose the Issue

Logged into the server using ssh and tried to start the MySQL server:

Commands tried:
```sh
/etc/init.d/mysqld start
```
and
```sh
service mysqld start
```
neither of those worked! =(

tried to read the MySQL Error Logs:
```sh
tail -500 /var/lib/mysql/my.server.com.err
```
**No such file or directory** ... not a good start!

![mysql wont start](http://i.imgur.com/IvtZkfn.png "mysql wont start")

### What Linux OS are we Running?

Need to determine what version of Linux we are running to start debug:
```sh
lsb_release -irc
Distributor ID: CentOS
Release:    5.8
Codename:   Final
```
**Centos 5.8** ...

Ref: http://superuser.com/questions/11008/how-do-i-find-out-what-version-of-linux-im-running

### Determine Which MySQL Package (is being used)


> try reading MySQL logs:

```sh
# http://www.centos.org/forums/viewtopic.php?t=31031
$ /usr/libexec/mysqld --help --verbose
-bash: /usr/libexec/mysqld: No such file or directory
$ tail /var/log/mysqld.log
tail: cannot open `/var/log/mysqld.log' for reading: No such file or directory
```



### Try Yum Update

```
Trying other mirror.
Error: failure: repodata/18da83bd3a5716f0c204141c8536fc1e-filelists.sqlite.bz2 from nodejs-stable: [Errno 256] No more mirrors to try.
 You could try using --skip-broken to work around the problem
 You could try running: package-cleanup --problems
                        package-cleanup --dupes
                        rpm -Va --nofiles --nodigest
The program package-cleanup is found in the yum-utils package.
```

```sh
cd /etc/yum.repos.d/
ls
CentOS-Base.repo       CentOS-Media.repo  epel.repo      nodejs-stable.repo
CentOS-Debuginfo.repo  CentOS-Vault.repo  epel-testing.repo

cat nodejs-stable.repo
[nodejs-stable]
name=Stable releases of Node.js
#baseurl=http://nodejs.tchol.org/stable/el$releasever/$basearch/
mirrorlist=http://nodejs.tchol.org/mirrors/nodejs-stable-el$releasever
enabled=1
skip_if_unavailable=1
gpgcheck=0
#gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-nodejs-stable-el-$releasever

[nodejs-stable-source]
name=Stable releases of Node.js - source
#baseurl=http://nodejs.tchol.org/stable/el$releasever/SRPMS/
mirrorlist=http://nodejs.tchol.org/mirrors/nodejs-stable-source-el$releasever
enabled=0
skip_if_unavailable=1
gpgcheck=0
#gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-nodejs-stable-el-$releasever
```
remove the offending (*broken*) repo:
```sh
rm nodejs-stable.repo 
rm: remove regular file `nodejs-stable.repo'?
```
Re-try `yum update` this time it works. But I don't actually update anything, 
simply *test* that it works.

## Backup the Database Files and Download them using SFTP

On Centos the MySQL files are located at: **/var/lib/mysql**

```sh
tar czvfp mysql-backup-before-re-install-20131108.tar.gz /var/lib/mysql
# or
mysqldump --user=da_admin --password=Vuz15qBC --all-databases > all_databases.sql
sftp server@ip-address
get mysql-backup-before-re-install-20131108.tar.gz
```

## Re-Install MySQL 

Tried:
```sh
yum install mysql-server
```
got:
```
No package mysql-server available.
Nothing to do
```
Sad times... =(

Check if there are *any* packages that contain the word **mysql**:

```sh
rpm -qa | grep mysql
```
nothing! =(

So did a bit more googling and discovered: 
http://bugs.mysql.com/bug.php?id=44492

```sh
mv /var/lib/mysql/ib_logfile* /root/
service mysqld restart
Shutting down MySQL                                        [  OK  ]
Starting MySQL                                             [  OK  ]
```

**Maktub**! :-)


## Bibliography

I don't have enough RAM to *remember* everything LAMP-related so I usually
just google for the commands I need.

- How to Start MySQL Deamon: http://theos.in/desktop-linux/tip-that-matters/how-do-i-restart-mysql-server/
- YUM Maintenance: http://www.centos.org/docs/5/html/yum/sn-yum-maintenance.html
- MySQL Config on Centos: http://www.rackspace.com/knowledge_center/article/configuring-mysql-server-on-centos
- Installing MySQL on Centos: http://www.rackspace.com/knowledge_center/article/installing-mysql-server-on-centos
- No mysql-server package: http://www.linuxquestions.org/questions/red-hat-31/yum-install-no-package-mysql-server-available-886056/
- Specific to Centos 5.8: http://www.ehowstuff.com/how-to-install-mysql-server-on-centos-5-8/