---
nid: '3366'
title: 'My Quest for Free Licensed Japanese Pop Music with Wacca.Fm''s XMLRPC API and Python''s xmlrpclib'
authors: 'Terry Hancock'
published: '2010-08-24 14:02:14'
tags: 'python,movies,music,lunatics,xmlrpc'
license: verbatim_only
section: opinions
listed: 'true'
book: making_free_movies_with_free_software
book_weight: '0'
layout: book
---
This is my story about searching for Japanese pop music under a free culture license. It's a little tricky, because the best sites for this are of course, in Japan, and not well advertised on the English web. I discovered how to use Python's XMLRPC library to run searches using the web API for a Japanese music sharing site called "Wacca". The results were very interesting -- I found some of what I was looking for, though not all.

<!--break-->

=TEXTBOX_START=Making Movies with Free Software=
This article is part of an on-going series on the challenges I've faced in producing two free-licensed movies, _Marya Morevna_, through the [Morevna Project](http://www.morevnaproject.org) and [Lunatics](http://lunatics.tv), which we are working on as Anansi Spaceworks.
=TEXTBOX_END=

It all started when I was looking for character theme music on Jamendo for Lunatics. One of the characters is Japanese, and while she probably doesn't listen to J-Pop or Enka much herself (she's more of a classical piano type), we felt there might be some times when the cultural reference would be appropriate.

=ZOOM=Clearly what I needed was to find a Japanese music sharing site=

Well, as it turns out, Jamendo's selection of Japanese popular music is _poor_. I found three actual J-Pop albums under [By-NC-SA](http://creativecommons.org/licenses/by-nc-sa/3.0) licenses (which I can't use as is, and, considering the state of my Japanese, negotiating for a re-licensed track might be beyond my capabilities). In fact there is only one "single" track (["Kotoba Wa Sonomama"](http://www.jamendo.com/album/67596/)) of J-Pop under a By-SA license, by "Hanadix" (though it's catchy, I admit). I suppose this is not so surprising, Jamendo is a French website. Their collection of American Country and Western music isn't that impressive either (perhaps I'll tackle in another column).

# Finding a Japanese Music Site

Of course, I also did some general websearches on Enka and Creative Commons licenses ([By](http://creativecommons.org/licenses/by/3.0) and [By-SA](http://creativecommons.org/licenses/by-sa/3.0), specifically). I found nothing this way, and of course, lots of useless links -- it's not a narrow enough way to search, because even when these terms occur together on a page, it doesn't mean you found a music download under that license. Of course, I had to do these searches in English and Japanese. For the record, "Enka" is spelled in Japanese, "演歌", Creative Commons is "クリエイティブコモンズ" (that's just a transliteration of the English into katakana characters) and Attribution-ShareAlike is "表示 - 継承".

=IMAGE=fig_japanese_terms.jpg=A few terms of Japanese used in this column -- just in case your browser doesn't render the Japanese text correctly=

I think the best description of Enka that I can provide is that it is the Japanese equivalent of Country and Western music ("The music of pain" as Joss Whedon once described it). Here's a downloadable [example](http://wacca.fm/m/20027) (though it's By-NC licensed). It serves much the same emotional purpose in Japan: nostalgia for a past way of life, loves lost, and so on. If you sing a "somebody-did-somebody-wrong" song in Japanese, it'll probably be Enka. It's frequently found its way into Anime as comic exaggeration of a characters' miserable circumstances. Occasionally, it even gets used without irony.

=IMAGE=fig_wacca_homepage_wc.jpg=Wacca.fm is a Japanese music sharing site. It's similar in concept to Jamendo, but obviously it has a lot more Japanese music=

Clearly what I needed was to find a _Japanese_ music sharing site, that would be much more likely to have a wider variety of less-westernized music. After doing a number of searches for meta-sources (by which I mean sources that list sources), I did finally find on: [Wacca](http://wacca.fm). It was a challenge to navigate since all of the buttons are labeled in Japanese (there is no "English" button). There are a number of tricks for navigating such sites. I should probably mention a few:

* Pay attention to your browser's status bar as you mouse-over buttons, URLs often use English words, even when the site language is different
* You can always give the URL to Yahoo's "Babelfish" translation service. This will machine-translate the text on the page (though not the graphical buttons)
* Put yourself in the shoes of the designer -- where would you put the button you need to find?
* Be sure to check the original page, especially if you can read the foreign language at all. Sometimes Babelfish makes unreadable hash out of the text. It's only a machine.

=ZOOM= It was a challenge to navigate since all of the buttons are labeled in Japanese=

This part was really fun. For one thing, I finally did find Enka and a variety of other styles of Japanese music available for download (which is progress -- I'd never found it in my previous attempts). But indeed, the great majority of the music is under non-commercial or no-derivatives licenses. It's a very inefficient strategy to search for the music you want and only then read the license. So I needed to be able to search by license (I described how to do this at Jamendo in a previous column). However, Wacca is not so convenient -- it's possible to limit a search to "Creative Commons only", but there's no way to limit it to the much-less-used free licenses (it's clear to me that Wacca, and probably the Japanese web in general, is a few years behind the West in adopting free culture licenses; which is not terribly surprising, given that the Creative Commons is an American/English-language organization).

=IMAGE=fig_enka_bync.jpg=I found this Enka track with just a few minutes of searching using the web interface, but there was no obvious way to limit the search to specific CC licenses=

It is possible to search the site using Google, using the Creative Commons license name in Japanese, which does occur on the song's page (unlike Jamendo, uses a per-song licensing model (rather than per-album). Wacca's approach actually makes more sense to me here).

# Using the Web API

However, I did notice a little button on the help page that says [APIについて](http://wacca.fm/help/api) (["about the API"]()). Ooh. _API_. I can work with that. Using Babelfish to translate the API documentation pages into English (and referencing the originals), I was able (after a few false starts) to work out how to use Wacca's XMLRPC API to do the exact searches I wanted. Now we're cookin'!

=IMAGE=fig_babelfish.jpg=You can use Yahoo's Babelfish service to machine-translate a web page if you need to=

=ZOOM=Now of course, I always find it a little daunting when I realize I'm going to have to write a program to do what I want. But in this case, it's not so bad=

Now of course, I always find it a little daunting when I realize I'm going to have to write a program to do what I want. But in this case, it's not so bad. All I need is a little _ad hoc_ script. In fact, I really could (and in fact, did) do all of this stuff in the Python interactive interpreter. I'm going to keep this dead simple, because if I start trying to trick everything up to make it generally usable, I'll just get bogged down and never finish it. So here's what I did, and if you want to make a general tool from it, be my guest.

=IMAGE=fig_api_doc_page.jpg=Top page of the API documentation -- original on the left, and Babelfish translation into English on the right=

As is common around the world, the API itself uses English words. I'm not sure about the politics of this, or how other people feel about it, but I have to say that as a native speaker of English, I am truly grateful for this fact. So, indeeed, the Wacca API is in English, though the data we'll receive will be in UTF-8 encoded Japanese.

First of all, of course, I have to go find the Python documentation for the `xmlrpclib` module and learn how to use it. This is not as well-written as I would like, which is responsible for my false starts. But let me demonstrate how to use it to retrieve Wacca's "genre list".  Wacca's API uses "`genre`" and "`sub_genre`" to identify songs in its database, and these are just integers. The genre list will tell me what the numbers actually mean.

=CODE_START=
>>> import xmlrpclib
>>> wacca = xmlrpclib.ServerProxy('http://a.wacca.fm/api/xmlrpc')
>>>
>>> genrelist = wacca.song.getGenreList()
>>>
>>> genrelist_text = "LIST OF GENRES DEFINED at wacca.fm (genre, sub_genre, genre_name)\n"
>>> for genre in genrelist:
...     genrelist_text += "%d.%d=%s\n" % (genre['genre_id'], genre['sub_genre_id'], genre['genre_name'])
...
>>> open("wacca_genrelist.txt", "wb").write(genrelist_text.encode("utf-8"))
>>>                                        
=CODE_END=

The first two lines import the `xmlrpclib` module and establish a proxy object for the remote server. This does not actually make any outside contact. The next line does that, by calling the "`song.getGenreList()`" method on "`wacca`", I'm really making a database query to the server. So this line takes a few seconds to run. 

The result, `genrelist`, is a list of python dictionary objects with the appropriate mappings.

After that, I simply collate the data to create a readable text list and dump that out to a file. Of course, I could just print out the list to the terminal, but I want to save this list to a file so I can refer to it later.

I won't reproduce the whole file that results here, but here's the part I was interested in:

=CODE_START=
LIST OF GENRES DEFINED at wacca.fm (genre, sub_genre, genre_name)
1.0=ポップス
1.1=ポップス
1.2=フォーク
1.3=歌謡曲
1.4=演歌
1.5=童謡
2.0=ロック
2.1=ロック
2.2=ハードロック

...
=CODE_END=

Now, of course, the names are in Japanese, but I can read some of these. In English, these are "pop" (or "poppsu", since it really means something a little different in Japanese), "folk", "kayoukyoku" (another older style of Japanese pop music distinct from enka mainly in singing style), "enka", one I don't recognize, and of course, "rock" and "hard rock". It's primarily the "1" genres that I'm interested in searching (many of the other genres are Western genres that are better represented on Jamendo anyway -- not that I didn't look, but I won't go into that here).

=ZOOM=The search interface is more interesting, and requires me to pass XMLRPC parameters=

The search interface is more interesting, and requires me to pass XMLRPC parameters. I found the documentation very confusing on this point, but in fact, what you are supposed to do is to pack the parameters into a Python dictionary and use that as the argument to the remote method. The [Wacca API for the `song.Search` method](http://wacca.fm/help/api/songsearch) provides the definitions for the parameters I'm using here.

For the record, you can sort Creative Commons licenses completely with the interface, although it may not seem entirely intuitive. All have the value of `copyright` set to "`creativecommons`" (many Wacca tracks do not use Creative Commons licenses at all). Here's the breakdown:

License                     | CC-By    | CC-By-SA  | CC-By-ND  | CC By-NC-SA | CC By-NC-ND
----------------------------|----------|-----------|-----------|-------------|--------------
`copyright_commercial`      | `yes`    | `yes`     | `yes`     | `no`        | `no`
`copyright_modifications`   | `yes`    | `share`   | `no`      | `share`     | `no`

=TABLE_CAPTION=Sorting out the Creative Commons licenses in the Wacca search interface=

Now it's possible to answer my question about whether By-SA Enka exists:

=CODE_START=
>>> bysa_enka = wacca.song.Search({'genre':1, 'sub_genre':4, 'copyright':'creativecommons', 'copyright_commercial':'yes', 'copyright_modifications':'share'})
=CODE_END=

Unfortunately, what you get is a traceback:

=CODE_START=
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/usr/lib/python2.5/xmlrpclib.py", line 1147, in __call__
    return self.__send(self.__name, args)
  File "/usr/lib/python2.5/xmlrpclib.py", line 1437, in __request
    verbose=self.__verbose
  File "/usr/lib/python2.5/xmlrpclib.py", line 1201, in request
    return self._parse_response(h.getfile(), sock)
  File "/usr/lib/python2.5/xmlrpclib.py", line 1340, in _parse_response
    return u.close()
  File "/usr/lib/python2.5/xmlrpclib.py", line 787, in close
    raise Fault(**self._stack[0])
xmlrpclib.Fault: <Fault -2: 'NO_RESULT'>
=CODE_END=

So it seems that the answer is "no". A similar search for By-licensed Enka... 

=CODE_START=
>>> by_enka = wacca.song.Search({'genre':1, 'sub_genre':4, 'copyright':'creativecommons', 'copyright_commercial':'yes', 'copyright_modifications':'yes'})
=CODE_END=

gives the same results.  So it seems that the wonderful world of Japanese enka has not yet been touched by the concept of true free licensing. There are quite a few under the [By-NC](http://creativecommons.org/licenses/by-nc/2.1) license, though:

=CODE_START=
>>> bync_enka = wacca.song.Search({'genre':1, 'sub_genre':4, 'copyright':'creativecommons', 'copyright_commercial':'no', 'copyright_modifications':'yes', 'limit':1000})
>>> len(bync_enka)
103
=CODE_END=

So should I decide it's worth the trouble to try to negotiate for a relicense of a track in a foreign language, I can at least find them.

I can look at some details on one of these tracks, like so:

=CODE_START=
>>> print "(%s, %s) -> %s" % (bync_enka[17]['artist_name'], bync_enka[17]['song_title'], bync_enka[17]['url'])
(京鈴, 瀬戸内無情) -> http://wacca.fm/m/19278
=CODE_END=

And I can simply paste the [URL for the track](http://wacca.fm/m/19278) into my browser location bar if I want to take a closer look.

There are some other types of music that _are_ available under free licenses, so I might like to give those a listen:

=CODE_START=
>>> by_kayoukyoku = wacca.song.Search({'genre':1, 'sub_genre':3, 'copyright':'creativecommons', 'copyright_commercial':'yes', 'copyright_modifications':'yes'})
>>> len(by_kayoukyoku)
1
>>> 
>>> print "(%s, %s) -> %s" % (by_kayoukyoku[0]['artist_name'], by_kayoukyoku[0]['song_title'], by_kayoukyoku[0]['url'])
(奥様レコード, なめこ汁) -> http://wacca.fm/m/9181

=CODE_END=

Ha. There's _one_ kayoukyoku track. It's [here](http://wacca.fm/m/9181). 

=IMAGE=fig_nameko_shiru.jpg=The one kayoukyoku track under a free license. It has toilet paper on the cover. I don't know why, either=

# Ah Well, Just Exploring

Well, it appears my quest for free-licensed Enka is unfulfilled, but there is plenty of other Japanese pop on the site. Searching under "poppsu", for example turns up 47 By-licensed tracks and 29 By-SA-licensed tracks. This is much better than my results with Jamendo. In total there are 168 "By-SA" tracks of all genres and 205 "By" tracks of all genres on Wacca (on the day I did this search, of course -- the results will naturally change over time).

It is of course, a very tiny drop in the bucket amongst all the other tracks on Wacca, which is the reason this API search was necessary to find out what I wanted to know. But it's still interesting stuff. I'm currently working on a script to collect this information in a more accessible way. Fun stuff!

=TEXTBOX_START=Classifying Licenses from Wacca Results=
By way of postscript, I do want to share one more handy function I wrote for working with this data. The data returned by the search calls is a list of dictionaries containing data about each song. But it preserves the same odd way of expressing Creative Commons licenses. So I wrote this function to classify the license in the way I'm used to:

=CODE_START=
def classify_cc(track):
    """
    Convenience function to identify CC licenses
    from the metadata that wacca.fm provides.
    """
    if not track['copyright']=='creativecommons':
        s = "ARR"
        return s
    else:
        s = "CC "
    if track['copyright_commercial']=='no':
        s += "By-NC"
    else:
        s += "By"
    if track['copyright_modifications']=='no':
        s += "-ND"
    if track['copyright_modifications']=='share':
        s += "-SA"
    return s
=CODE_END=

The expected argument is the dictionary contained in each element of the return list. So you can call this function to sort a set of results, or to identify the licenses using common abbreviations.
=TEXTBOX_END=

=TEXTBOX_START=Licensing Notice=
This work may be distributed under the terms of the [Creative Commons Attribution-ShareAlike License, version 3.0](http://creativecommons.org/licenses/by-sa/3.0), with attribution to "Terry Hancock, first published in [Free Software Magazine](http://www.freesoftwaremagazine.com)". Illustrations and modifications to illustrations are under the same license and attribution, except as noted in their captions (most of the images in this article are fair-use screen captures). I waive all rights to the code examples, so they may be treated as Public Domain, see [CC0](http://creativecommons.org/publicdomain/zero/1.0/).
=TEXTBOX_END=

