---
nid: '2156'
title: 'Is Practice Fusion in a partnership with Google?'
authors: 'Fred Trotter'
published: '2007-03-23 19:25:01'
tags: 'google,health-software,mirrormed,fred-trotter,practicefusion'
license: verbatim_only
section: opinions
listed: 'true'

---
Several blogs and newspapers recently reported that Practice Fusion is partnering with Google, which will provide targeted ads for Practice Fusion's EHR solution. However, while everyone is wondering when and how Google will be getting into Health IT, Google is not (yet) entering the EHR market. Most importantly, Practice Fusion’s business model is trivial to implement using free software. Read on for the all the gory technical details.

# The Google Partnership 

* Google is not partnering with Practice Fusion any more than they are partnering with any AdSense website allowed to use the Adsense API (only sites with more than 100000 page views per day are allowed to use Adsense API).
* While the idea of using advertising to fund an EHR is interesting, the technology behind it is trivial.
* It would take me about an hour to replicate this business model using the GPL [MirrorMed](http://www.mirrormed.org) (or ClearHealth, OpenEMR, TORCH etc. etc.) However, it wouldn't be using the advanced Adsense API, but a simple separate frame.

After reading marketing material from Practice Fusion, many reporters believed that the EHR provider had a special relationship with Google. Of course, since your average journalist does not know a bit from a byte, they didn’t even know how to investigate further, and the second hand journalism (and sadly blogging) made Practice Fusion look like Google’s new health care partner, which, of course, they are not.

When I first saw [the announcement](http://www.sfgate.com/cgi-bin/article.cgi?f=/c/a/2007/03/16/BUG9OOM1FJ1.DTL) I thought, “There’s no way they would announce this just because they signed up for AdSense... right?” Wrong. Despite countless press-release regurgitating journalists commenting on the [deal](http://govhealthit.com/article97942-03-16-07-Web) and a blogosphere abuzz with “Google’s entry into the EHR market”, at least Andis Robeznieks over at Health IT Strategist (HITS) apparently knew what questions to ask whom. In the March 19th 2007 edition of HITS, he posted a quote from Google’s Brandon McCormick. From the article:

>“Practice Fusion has recently joined Google’s AdSense program to place ads on their Web pages,” McCormick said in an e-mail. “AdSense helps hundreds of thousands of publishers effectively monetize online content in just about every vertical category that exists on the Web. Practice Fusion’s participation in our AdSense program is not exclusive and should not be read as an indication of any product plans by Google.”

Translation: Google is not doing anything special for Practice Fusion that they would not do for anybody with at least 100000 page views a day. As I will explain shortly, you don't actually need the Adsense API to reach the same goal (simply by using frames).

Is this a particularly innovative strategy? Not really. It would be pretty aggressive if they were considering this as their only source of income, but they plan on offering standard support too.

## This funding model is trivial to implement using free, GPLed software

Which is, of course, why I am writing this here! The “innovation” that Practice Fusion has figured out how to get Google ads to appear without broadcasting HIPAA covered data over the internet. They did so using the Adsense API. However, to get this to work in [MirrorMed](http://www.mirrormed.org) (a GPL-available PHP-based EHR that I contribute to), you simply need to understand how frames work with Google Ads. Google Ads scan the content of the web page that they live in to provide “targeted” advertising. Very likely you might see ads for Electronic Health Records on [Free Software Magazine](http://www.freesoftwaremagazine.com) since I am discussing them in this text. Google is aware of the text on the same HTML page and delivers ads that might be interesting in the context of that HTML. However, it [only looks inside a particular frame](https://www.google.com/adsense/support/bin/answer.py?answer=10035).

So, if John Doe with a social security of 123-12-1234 appeared in a web-based EHR with Google ads, both the name and the social security number would be transmitted to Google across the internet in cleartext, which is what we in the HIPAA security business like to call “bad”. One cannot just stick Google ads on a page with HIPAA covered data on it. What you can do is create two frames or iframes for your EHR. On one, which we can call the EHR frame, you put HIPAA data like name, address, phone and social security numbers. On the other frame, the ad frame, you put patient conditions without identifying data. For instance, if a patient was suffering from high cholesterol, the ad frame might have the term, “High Cholesterol” written at the top. Below those terms, which would match to the current patients conditions, would be AdSense ads that would target those terms. For instance, Google might serve an ad for Lipitor in response to the term “High Cholesterol”. Voilà, Google ads without violating HIPAA.

Granted, Practice Fusion uses the Google Ads API directly, rather than using a frames based system. If you feel that my method above is a hack (because it is) then you can query Google Adsense API on the server side and present Google Ads within the same frame as your EHR content. This is a lot cleaner but not that much harder than what I have described above

To fully compete with Practice Fusion go rent a server at [ServerBeach](http://www.serverbeach.com) for $75 dollars a month, install MirrorMed and hack it up to present your two frames. Make sure you backup your HIPAA covered data, and start marketing your “partnership” to provide an EHR with Google. The only difference between you and Practice Fusion would be: 1) You are not using the Adsense API 2) that you are leveraging GPL Electronic Health Records on a GPL operating system, which 3) might give you a shot in hell at being profitable using only Google ads 

_As per the Fred Trotters comments, this article was toned down on 3-21-08 by Tony Mobily and Fred Trotter._

- [Fred Trotter](http://www.fredtrotter.com)

[GPLMedicine.org](http://www.gplmedicine.org)