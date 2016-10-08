---
nid: '2350'
title: 'Book review: SQL Hacks by <i>Andrew Cumming and Gordon Russell</i>'
authors: 'Jeremy Turner'
published: '2008-11-19 2:41:50'
tags: 'book-review,sql'
issue: ''
license: cc-by-nc
section: reviews
listed: 'true'

---
SQL is the de facto method of accessing relational data within databases. Databases have been around for many years, and consequentially many many books have been written about them. However, [SQL Hacks: Tips & Tools for Digging into Your Data](http://www.oreilly.com/catalog/9780596527990) by Andrew Cumming and Gordon Russell sets itself apart through format, easy-going style, and ability to cover lots of tips, tricks, and hacks with Structured Query Language. The O'Reilly Press Hacks Series book covers SQL for MySQL, Microsoft SQL Server, Oracle, PostgreSQL, and Microsoft Access. It covers 100 hacks which will definitely add to your SQL toolkit, and it will help give you ideas of how to solve related issues in writing queries.

<!--break-->

=IMAGE=cover.jpg=The book's cover =

I find "SQL Hacks" to be very useful and easy to follow. It uses the same textual conventions of the other "Hacks" books from O'Reilly. Where needed, the hacks address different databases, and any potential changes that you might need to make to your query. Another feature I find useful is a "hacking a hack" section. Certain hacks can be taken a step further, helping you solve other potential challenges.

The text also includes SQL code that you can use with several databases. The authors clearly state the different syntactical differences between how the different databases interpret SQL.

=ZOOM="SQL Hacks" has great snippets of SQL to help you solve real-world issues=

# The contents

"SQL Hacks" continues the hacks series of O'Reilly books. It contains 100 hacks spread out in 12 different chapters. The text itself is very easy to read. SQL statements are notated with a monospace font, making them easy to distinguish from discussion. The book weighs in at 410 pages.

Here is an example. One of the hacks described how to multiply numbers in a SELECT query. The SQL-92 standard (which the book tried to follow as much as possible) doesn't provide a multiplication operator, but it does provide exponent and logarithmic functions. Using log/exponent functions, you can use these standard functions to create a mathematical equivalent. The added benefit is that this hack is not reliant on SQL which only functions on some particular database.

The hacks in the book are grouped into 12 subject areas, including topics like how to manipulate the database with SQL from a command-line, or protecting yourself from online attacks when the database is accessible over the Internet. The book also covers areas such as date/time manipulation, text string manipulation, but also meta database hacks such as auto creating users, checking up on long running database queries, and more.

Another hack that I enjoyed reading was finding a particular day of the month, such as the second Tuesday of a given month. The "hacking the hack" was to find the last Thursday of a month. With a little math, knowing what month and year, a little SQL does the trick.

# Who's this book for?

This book is geared towards readers who like the 'How do I?' style of the Hacks series as opposed to a reference manual style. People who work day after day with writing reports, queries, analyses will benefit because the hacks provide some neat functions. If you are just starting with SQL and relational databases, you are probably better served to look elsewhere.

# Relevance to free software

The book provides hacks on SQL, which is nearly identical across multiple databases. The book balances itself between free and proprietary databases, including MySQL, PostgreSQL, Oracle, Microsoft SQL Server and Microsoft Access. Free databases are not necessarily favored or promoted over the proprietary ones, but SQL query differences are very well documented if the hack requires a special function.

# Pros

You should buy this book because it has a lot of great information on writing snippets of SQL to solve problems normally solved at the application level. The authors explain things very clearly, and the examples are easy to follow.

# Cons

If you are looking for a beginning book in SQL and databases, this isn't the right fit for you. It is also not a reference book.

Book          |  |
--------------|--------|
Title         | SQL Hacks|
Author        | Andrew Cumming and Gordon Russell|
Publisher     | O'Reilly|
ISBN          | 9780596527990|
Year          | 2006|
Pages         | 410|
CD included   | No|
FS Oriented   | 8|
Overall score | 9|

=TABLE_CAPTION=In short=
