---
nid: '1632'
title: 'Foreign languages and documentation'
authors: 'Martin Brown'
published: '2006-06-22 6:05:26'
tags: 'documentation,translation'
license: verbatim_only
section: opinions
listed: 'true'

---
At the developers conference this year, held in Sorrento, Italy, I was fortunate enough to meet and have dinner with some Italian MySQL users—some of whom had travelled from Rome to be with us that evening at a lovely traditional Italian restaurant just off one of the main squares.

I know it’s going to sound stupid, and this is obviously an Anglo Saxon trait, but I really had never given much consideration to users of software in other languages. Okay, I’m obviously aware that other countries and nationalities use computers—I answer many reader queries on my books and articles from non-English speakers from as near as Europe and as far as Japan and China—but the internet is very much driven by the English speakers of the world.

Talking to our Italian guests it hit me how little English they really knew, and from that, how difficult it must be to read a manual in a language other than your own. How would you cope, for example, trying to read a manual using the small amount of French that you were taught in your teens? Services like [Babelfish](http://babelfish.altavista.com/) are great, but anything beyond the ordinary and it starts to miss out words and even entire phrases.

Hopefully the people we met in Italy will help us at MySQL to produce Italian versions of our documentation—if anybody else wants to help, please get in touch—until then, the closest we can get to an Italian version of the manual is the new [Spanish manual](http://dev.mysql.com/doc/#spanish-5.0). That manual is based on the 5.0 reference manual, and so it is a mere 1500 pages.

Of course, such a manual wont just be useful to those people over the Mediterranean, but the many Spanish speakers around the world, including North and South America.

As with most of our translations, this is a result of work with a partner (this time in Barcelona) and with the Spanish speaking community. If you have any questions, comments, or improvements, then please contact me or better still, use the email address at the head of the manual.

If you want to get involved, I’ll show you a quick trick so that you can see how to compare the Spanish and English manuals, or indeed any other combinations. All sections of the MySQL manual have a unique section ID, and this is the same, even across different versions of the manual. It is also retained in English even in the foreign manuals. So the Replication chapter, which has different numbers in different versions of the manual, always has the same base ID (replication). The introduction for the Replication chapter has an ID of “replication-intro”.

To see that in the English manual, use the base URL of [http://dev.mysql.com/doc/refman/5.0/en/](http://dev.mysql.com/doc/refman/5.0/en/). The “5.0” in this URL indicates the reference manual (and ergo, MySQL) version number, and the “en” the language (English). To get to the Replication intro, add “replication-intro.html” to the end to make [http://dev.mysql.com/doc/refman/5.0/en/replication-intro.html.](http://dev.mysql.com/doc/refman/5.0/en/replication-intro.html). Replace the “5.0” with “5.1” and you’ll get the Replication chapter that applies to the 5.1 version of the MySQL server and reference manual.

Similarly, for the Spanish manual, replace the “en” with “es” (for España), so the base URL becomes [http://dev.mysql.com/doc/refman/5.0/es/](http://dev.mysql.com/doc/refman/5.0/es/). The Replication Introduction in Spanish therefore becomes [http://dev.mysql.com/doc/refman/5.0/es/replication-intro.html](http://dev.mysql.com/doc/refman/5.0/es/replication-intro.html). 

Easy, right?

The same basic process can be used for all the translations. You can get to the French equivalent by using “fr” (for Français): [http://dev.mysql.com/doc/refman/5.0/fr/replication-intro.html](http://dev.mysql.com/doc/refman/5.0/fr/replication-intro.html).

Now you can compare French, Spanish and English versions of the manual side by side. Remember, we work on the free software and community philosophy; if you have a comment or want to make a contribution, get in touch!

