---
nid: '3751'
title: 'Oracle and the slippery bars of soap called Java and MySql'
authors: 'Tony Mobily'
published: '2012-04-18 5:25:24'
tags: 'sun,mysql,oracle,java,android,google'
license: verbatim_only
section: opinions
main_image: main.jpg
listed: 'true'

---
News about the lawsuit between Oracle (which owns Java) and Google (which uses aspects of Java in Android) are resonating far and loud at the moment. At this point in the article, I should summarise the story: the trouble is that a summary at this point is impossible. The main problem is with Oracle, and their inability to understand free software.

<!--break-->

The problem here is that Oracle really, really doesn't get free software. Here is what happened in two cases: MySql and Java


# MySql

When they acquired MySql, they had a great product in their hands with a market penetration higher than their own DBMS. They basically _bought their main competitor_. The problem is that their main competitor was free software. So, it wasn't "theirs" as such: it was theirs, and everybody's at the same time. As the copyright holders, they were the only people allowed do to certain things: release closed, proprietary, derivative versions of it for example. Or, allow other company to embed it in their own software without having to release their source code. The main asset was the name: everybody in the IT industry knows MySql, and learned to use it and trust it. Oracle, after the buyout, [raised the support prices for MySql](http://www.theregister.co.uk/2010/11/03/oracle_mysql_price_hike/). Oracle has still "many great MySQL Engineers left  and is growing engineering team" according to a [presentation by the Percona team in 2011](http://www.percona.com/files/presentations/percona-live/nyc-2011/PerconaLiveNYC2011-State-of-the-MySQL-Ecosystem.pdf). However, what we saw is that there is now MySql (owned by Oracle), but there is also [Percona](http://www.percona.com/) (an enhanced MySql with support available) and [MariaDB](http://mariadb.org/). The Percona team is a _very_ capable team offering quality support that competes directly with Oracle; MariaDB was created by the person who _invented_ Mysql in the first place. This is to say that these projects are _real_ competition, and might in the long run replace MySql altogether.

# Java

Java's story is much worse than MySql's -- maybe because there is more money involved. Java was released by Sun as free software. That is, _real_ free software: under the GPL V2. It doesn't really get much freer than that, right? Well... wrong, according to Oracle.
Back in 2005, Google wanted to start competing with Apple in the phone market; they were in a hurry, and they made a bad decision: they picked Java as their main development platform (they bought a little unknown company called Android). They actually picked the Java _language_ and _libraries_, more than the language as a whole: to write programs, they decided to use Dalvik, an alternative virtual machine. So, a Java program would be compiled into a Java .class file (the equivalent of an executable) and then transformed into a Dalvik binary file, ready to be executed. However, millions of Java developers were pretty much ready to go: they could use Java -- and its familiar APIs -- to write their programs. Since Java was released under a _very_ free license, it's easy to see why Google would not feel the need to enter a licensing agreement with Oracle.

Things get more complicated than this. In recent court events, Oracle seems to be [focusing on Java's API being copyright](http://news.cnet.com/2300-1035_3-10011982-13.html?tag=txt;post.gallery). Trouble is, Sun/Oracle promised that they wouldn't enforce their Java patents against companies implementing _full_ clones of the Java language (in theory, to prevent fragmentation); on the other hand, Oracle is suing Google because it _is_ using the full API. But! They are also suing Google for patent infringements. Now, when I say "I am not a lawyer", I actually mean it: this is an over-simplification of the matter, which is indeed much more complicated.

# Where now?

The Google vs. Oracle lawsuit about Java will go on for _years_. One party will win, the other will appeal. The other party will win, the other one will appeal. Or maybe there will be a settlement. At that point, technology will have moved on far enough to make the lawsuit completely irrelevant. (Hopefully, Google at that point will allow developers to write native software in Javascript!).

What _is_ painful to watch, is layers getting richer, and the economy poorer, because Oracle just doesn't get free software. At all. They are like slippery bars of soap that keep on finding their way to the floor. By the time Oracle picks them up, they will be virtually dissolved.
