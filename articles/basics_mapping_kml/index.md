---
nid: '3764'
title: 'Basics of mapping with KML'
authors: 'Bob Mesibov'
published: '2012-05-21 8:29:56'
tags: 'kml,google-earth,google-maps'
license: verbatim_only
section: end_users
main_image: main.png
listed: 'true'

---
Two of the most useful free (as in beer) software applications from Google are Google Earth, which runs on your computer, and Google Maps, which runs as a Web service. You can use both Google Earth and Google Maps to plot your own points, lines or shapes on an interactive map. You can also annotate these things with informative details. Unfortunately, the user interfaces provided by Google for doing this kind of DIY mapping are... well, clunky. They're slow, especially if you have a lot of items to add to a map.

The good news is that both Google Earth and Google Maps use the KML file format for their map-plotting. As this article shows, KML (Keyhole Markup Language) is simple. You can easily design your own maps offline, then display or share them as KML files.

#A basic map

A KML file is just a plain text file written in a particular way. It isn't a map, it's a set of instructions. In the same way that an HTML file tells a browser how to display a webpage, a KML file tells Google Earth and Google Maps how to plot your data. Here's an example of a KML file:

=CODE_START=
<?xml version="1.0" encoding="UTF-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2">
<Document>
<Placemark>
	<Point>
		<coordinates>144.253,-36.6632,0</coordinates>
	</Point>
</Placemark>
<Placemark>
	<Point>
		<coordinates>144.2891,-36.6894,0</coordinates>
	</Point>
</Placemark>
<Placemark>
	<Point>
		<coordinates>144.2344,-36.6907,0</coordinates>
	</Point>
</Placemark>
</Document>
</kml>
=CODE_END=

In this KML file I locate three spots north of Bendigo, Australia, where I found big nuggets of gold last year. (I wish!) Each spot, or 'placemark', is located with its longitude first (144...), then its latitude (-36...), then its elevation (0, meaning sea level). The longitude and latitude are in decimal degrees, and follow the convention that longitude E and latitude north are positive numbers, while longitude west and latitude south are negative.

Those three numbers (longitude, latitude and elevation) in decimal-degree, comma-separated format are all that Google Earth needs to plot the points. To see this in action, copy the KML text above, paste it into a text editor and name the file 'bendigo.kml'. Now open `bendigo.kml` in Google Earth and you'll see it zoom in to the three spots and mark each one with a yellow pushpin.

#Annotating your points

To label the points, we'll add a name to each placemark line, like this:

=CODE_START=
<?xml version="1.0" encoding="UTF-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2">
<Document>
<Placemark>
	<name>Spot 2</name>
	<Point>
		<coordinates>144.253,-36.6632,0</coordinates>
	</Point>
</Placemark>
<Placemark>
	<name>Spot 3</name>
	<Point>
		<coordinates>144.2891,-36.6894,0</coordinates>
	</Point>
</Placemark>
<Placemark>
	<name>Spot 5</name>
	<Point>
		<coordinates>144.2344,-36.6907,0</coordinates>
	</Point>
</Placemark>
</Document>
</kml>
=CODE_END=

To see the effect, save these changes to `bendigo.kml`, delete the old `bendigo.kml` from _Temporary Places_ in Google Earth, then open the revised `bendigo.kml`. Each yellow pushpin now has a name ('Spot 2', for example) next to it.

We can add information to each point with 'description' markup, like this:

=CODE_START=
<?xml version="1.0" encoding="UTF-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2">
<Document>
<Placemark>
	<name>Spot 2</name>
	<description>12 May 2011, 2.3g nugget</description>
	<Point>
		<coordinates>144.253,-36.6632,0</coordinates>
	</Point>
</Placemark>
<Placemark>
	<name>Spot 3</name>
	<description>6 June 2011, 5.6g nugget</description>
	<Point>
		<coordinates>144.2891,-36.6894,0</coordinates>
	</Point>
</Placemark>
<Placemark>
	<name>Spot 5</name>
	<description>28 June 2011, 4.1g nugget</description>
	<Point>
		<coordinates>144.2344,-36.6907,0</coordinates>
	</Point>
</Placemark>
</Document>
</kml>
=CODE_END=

If we open this new version of `bendigo.kml` in Google Earth and click on Spot 2, a balloon pops up with the date and nugget size from the description we added (first screenshot).

=IMG=1.png==

The box contains the unnecessary 'Directions' links, though. To get rid of that default text, we add some styling which tells Google Earth to put only the description text inside the balloon when a placemark is styled 'bendigo'. We put that styling in the KML file as shown below, and style each placemark with 'bendigo':

=CODE_START=
<?xml version="1.0" encoding="UTF-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2">
<Document>
<Style id="bendigo">
	<BalloonStyle>
		<text>$[description]</text>
	</BalloonStyle>
</Style>
<Placemark>
	<name>Spot 2</name>
	<description>12 May 2011, 2.3g nugget</description>
	<styleUrl>#bendigo</styleUrl>
	<Point>
		<coordinates>144.253,-36.6632,0</coordinates>
	</Point>
</Placemark>
<Placemark>
	<name>Spot 3</name>
	<description>6 June 2011, 5.6g nugget</description>
	<styleUrl>#bendigo</styleUrl>
	<Point>
		<coordinates>144.2891,-36.6894,0</coordinates>
	</Point>
</Placemark>
<Placemark>
	<name>Spot 5</name>
	<description>28 June 2011, 4.1g nugget</description>
	<styleUrl>#bendigo</styleUrl>
	<Point>
		<coordinates>144.2344,-36.6907,0</coordinates>
	</Point>
</Placemark>
</Document>
</kml>
=CODE_END=

The result is much neater (second screenshot).

=IMG=2.png==

#Choosing markers

We're not stuck with yellow pushpins for markers. To change what Google Earth uses, we first find the URL for the Google marker we want, then write that URL into an icon style for our 'bendigo' styling.

To get the URL, right-click on one of the three yellow pushpins in Google Earth and choose _Properties_. An _Edit Placemark_ window will open. Click on the icon box to the right of the _Name_ field and a palette of icons appears. Click on an icon and its URL appears at the top of the palette box. For example, if I pick the plain green paddle I see the URL _http://maps.google.com/mapfiles/kml/paddle/grn-blank.png_.

We add that URL to the 'bendigo' style like this:

=CODE_START=
<?xml version="1.0" encoding="UTF-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2">
<Document>
<Style id="bendigo">
	<BalloonStyle>
		<text>$[description]</text>
	</BalloonStyle>
	<IconStyle>
		<Icon>
			<href>http://maps.google.com/mapfiles/kml/paddle/grn-blank.png</href>
		</Icon>
	</IconStyle>
</Style>
<Placemark>
	<name>Spot 2</name>
	<description>12 May 2011, 2.3g nugget</description>
	<styleUrl>#bendigo</styleUrl>
	<Point>
		<coordinates>144.253,-36.6632,0</coordinates>
	</Point>
</Placemark>
<Placemark>
	<name>Spot 3</name>
	<description>6 June 2011, 5.6g nugget</description>
	<styleUrl>#bendigo</styleUrl>
	<Point>
		<coordinates>144.2891,-36.6894,0</coordinates>
	</Point>
</Placemark>
<Placemark>
	<name>Spot 5</name>
	<description>28 June 2011, 4.1g nugget</description>
	<styleUrl>#bendigo</styleUrl>
	<Point>
		<coordinates>144.2344,-36.6907,0</coordinates>
	</Point>
</Placemark>
</Document>
</kml>
=CODE_END=

Save and reload `bendigo.kml`, and presto! we've got plain green paddle markers instead of yellow pushpins.

#Grouping markers

I struck gold (I do wish!) at those three spots, but I also looked at three other spots near Bendigo and found nothing. To add those spots to the KML file, I can group successful and unsuccessful placemarks into folders, then give each folder a different style, like this:

=CODE_START=
<?xml version="1.0" encoding="UTF-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2">
<Document>
<Folder>
<Style id="success">
	<BalloonStyle>
		<text>$[description]</text>
	</BalloonStyle>
	<IconStyle>
		<Icon>
			<href>http://maps.google.com/mapfiles/kml/paddle/grn-blank.png</href>
		</Icon>
	</IconStyle>
</Style>
<name>Successes</name>
<Placemark>
	<name>Spot 2</name>
	<description>12 May 2011, 2.3g nugget</description>
	<styleUrl>#success</styleUrl>
	<Point>
		<coordinates>144.253,-36.6632,0</coordinates>
	</Point>
</Placemark>
<Placemark>
	<name>Spot 3</name>
	<description>6 June 2011, 5.6g nugget</description>
	<styleUrl>#success</styleUrl>
	<Point>
		<coordinates>144.2891,-36.6894,0</coordinates>
	</Point>
	</Placemark>
<Placemark>
	<name>Spot 5</name>
	<description>28 June 2011, 4.1g nugget</description>
	<styleUrl>#success</styleUrl>
	<Point>
		<coordinates>144.2344,-36.6907,0</coordinates>
	</Point>
</Placemark>
</Folder>
<Folder>
<Style id="failure">
	<BalloonStyle>
		<text>$[description]</text>
	</BalloonStyle>
	<IconStyle>
		<Icon>
			<href>http://maps.google.com/mapfiles/kml/paddle/red-blank.png</href>
		</Icon>
	</IconStyle>
</Style>
<name>Failures</name>
<Placemark>
	<name>Spot 1</name>
	<description>11 May 2011, nothing</description>
	<styleUrl>#failure</styleUrl>
	<Point>
		<coordinates>144.2641,-36.6549,0</coordinates>
	</Point>
</Placemark>
<Placemark>
	<name>Spot 4</name>
	<description>6 June 2011, nothing</description>
	<styleUrl>#failure</styleUrl>
	<Point>
		<coordinates>144.2828,-36.6899,0</coordinates>
	</Point>
</Placemark>
<Placemark>
	<name>Spot 6</name>
	<description>29 June 2011, nothing</description>
	<styleUrl>#failure</styleUrl>
	<Point>
		<coordinates>144.23,-36.6875,0</coordinates>
	</Point>
</Placemark>
</Folder>
</Document>
</kml>
=CODE_END=

=IMG=3.png==

Now the successful spots are marked with green paddles, and the failures with red ones (third screenshot). What's more, the 'Successes' and 'Failures' are separate layers in the Places window on Google Earth, so I can turn each one on and off separately (fourth screenshot).

=IMG=4.png==

For information on how to style the text in the 'description' balloons, see the excellent [KML reference](https://developers.google.com/kml/documentation/kmlreference) provided by Google.

#A simple line

In the KML code below, one single placemark contains all six of the spots near Bendigo that we saw above. They're listed in chronological order by date of visit within 'LineString' markup, which tells Google Earth that the six points are to be joined with a line. In the 'Style' section of the document I've created a style called `bendigo_line` (not very imaginative!) and given the line a width of 3 pixels and a gold color.

The hexadecimal color annotation in KML is a little strange. The first two characters are alpha value, so I've used `ff` for fully opaque. The next six characters are the usual RGB values, but reversed to BGR. In other words, in RGB notation my gold color would be `ffcc33`, but in KML it's `33ccff`.

=CODE_START=
<?xml version="1.0" encoding="UTF-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2">
<Document>
<Style id="bendigo_line">
	<LineStyle>
		<width>3</width>
		<color>ff33ccff</color>
	</LineStyle>
</Style>
<Placemark>
	<styleUrl>#bendigo_line</styleUrl>
	<LineString>
		<coordinates>
		144.2641,-36.6549,0
		144.253,-36.6632,0
		144.2891,-36.6894,0
		144.2828,-36.6899,0
		144.2344,-36.6907,0
		144.23,-36.6875,0
		</coordinates>
	</LineString>
</Placemark>
</Document>
</kml>
=CODE_END=

Copy and paste this code into a text editor, save the file as `bendigo_line.kml`, open it in Google Earth and you'll see my imaginary gold-hunting path.

The neatest way for me to label the line is to add another KML layer with the six spots I visited. The code below does this by putting the date into the label for the marker. Save this KML code as `bendigo_spots.kml`, open it in Google Earth and the result is shown in the fifth screenshot.

For more (much more!) on styling lines, building polygons and other mapping tricks, see the [KML reference](https://developers.google.com/kml/documentation/kmlreference). 

=IMG=5.png==

=CODE_START=
<?xml version="1.0" encoding="UTF-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2">
<Document>
<Folder>
<Style id="success">
	<BalloonStyle>
		<text>$[description]</text>
	</BalloonStyle>
	<IconStyle>
		<Icon>
			<href>http://maps.google.com/mapfiles/kml/paddle/grn-blank.png</href>
		</Icon>
	</IconStyle>
</Style>
<name>Successes</name>
<Placemark>
	<name>12 May</name>
	<description>2.3g nugget</description>
	<styleUrl>#success</styleUrl>
	<Point>
		<coordinates>144.253,-36.6632,0</coordinates>
	</Point>
</Placemark>
<Placemark>
	<name>6 June</name>
	<description>5.6g nugget</description>
	<styleUrl>#success</styleUrl>
	<Point>
		<coordinates>144.2891,-36.6894,0</coordinates>
	</Point>
	</Placemark>
<Placemark>
	<name>28 June</name>
	<description>4.1g nugget</description>
	<styleUrl>#success</styleUrl>
	<Point>
		<coordinates>144.2344,-36.6907,0</coordinates>
	</Point>
</Placemark>
</Folder>
<Folder>
<Style id="failure">
	<BalloonStyle>
		<text>$[description]</text>
	</BalloonStyle>
	<IconStyle>
		<Icon>
			<href>http://maps.google.com/mapfiles/kml/paddle/red-blank.png</href>
		</Icon>
	</IconStyle>
</Style>
<name>Failures</name>
<Placemark>
	<name>11 May</name>
	<description>nothing</description>
	<styleUrl>#failure</styleUrl>
	<Point>
		<coordinates>144.2641,-36.6549,0</coordinates>
	</Point>
</Placemark>
<Placemark>
	<name>6 June</name>
	<description>nothing</description>
	<styleUrl>#failure</styleUrl>
	<Point>
		<coordinates>144.2828,-36.6899,0</coordinates>
	</Point>
</Placemark>
<Placemark>
	<name>29 June</name>
	<description>nothing</description>
	<styleUrl>#failure</styleUrl>
	<Point>
		<coordinates>144.23,-36.6875,0</coordinates>
	</Point>
</Placemark>
</Folder>
</Document>
</kml>
=CODE_END=

#Getting lat/long data

Wikipedia is a good source for latitudes and longitudes. Look up [Bendigo](http://en.wikipedia.org/wiki/Bendigo) in Wikipedia, and you'll see in the fact box on the right of the page that the latitude and longitude is 36°45'S 144°16'E, which is in degree-minute(-second) format. Clicking on that lat/long takes you to the [Geohack](http://toolserver.org/~geohack/geohack.php?pagename=Bendigo&params=36_45_S_144_16_E_type:city%2886000%29_region:AU-VIC) page for Bendigo. Here the city's lat/long is shown in the decimal degree format needed for KML: -36.75, 144.266667. (Remember that latitudes north and longitudes east are positive, latitudes south and longitudes west are negative.)

If your lat/longs are from a GPS, set the GPS to display in decimal degrees. With Google Earth, go to _Show Lat/Long_ on the _Tools/Options/3DView_ tab and choose 'Decimal Degrees' to get the lat/long under the cursor in the right format for KML. It's also easy enough to convert a latitude or longitude from degree-minute-second format to decimal degrees using a calculator or spreadsheet. For example, 36°45'11"S = -(36 + (45/60) + (11/3600)) = -36.7531. (For more on decimal degrees, see the [Wikipedia page](http://en.wikipedia.org/wiki/Decimal_degrees)).

There's a little-known feature in Google Maps for finding lat/long. In the left-hand panel of a Google Maps page is a tiny link called 'Maps Lab'. Click on it, go to _LatLng ToolTip_, choose 'Enable' and click 'Save changes'. When you next want the lat/long of a spot under the cursor, just press Shift and the lat/long will appear, in decimal degrees (sixth screenshot).

=IMG=6.png==

#KML from a spreadsheet

I've been showing placemark code in nested hierarchical form in this article, like this:

=CODE_START=
<Placemark>
	<name>29 June</name>
	<description>nothing</description>
	<styleUrl>#failure</styleUrl>
	<Point>
		<coordinates>144.23,-36.6875,0</coordinates>
	</Point>
</Placemark>
=CODE_END=

However, KML viewers like Google Earth can also understand the code when it's written as a single line:

=CODE_START=
<Placemark><name>29 June</name><description>nothing</description><styleUrl>#failure</styleUrl><Point><coordinates>144.23,-36.6875,0</coordinates></Point></Placemark>
=CODE_END=

This makes it easy to build KML files with very large numbers of points using a spreadsheet. In Gnumeric, for example, I can write a row as shown in the seventh screenshot. The necessary text bits of the line are written in, with gaps for the longitude and latitude values. (In this example I've left out name, description and style, for simplicity's sake.)

=IMG=7.png==

The last cell on the right contains a formula that generates a placemark line as a text string. Pasting or entering in the longitude and latitude values, and copying down the text-bits entries and the formula, I can build placemark lines in those last cells (eighth screenshot) which can then be copy-pasted as a single block of text into a KML file between 'Document' or 'Folder' tags.

=IMG=8.png==

#KML in Google Maps

Google Maps also displays KML files, but only one at a time, and you need to put the file somewhere on the Web where Google Maps can find it.

The last screenshot shows Google Maps displaying `bendigo.kml` . I put the file in my 'Public' folder in Dropbox, copied the Public Link URL from Dropbox into the Google Maps search bar, and pressed Enter.

Easy!

=IMG=9.png==

#Note on KML and FLOSS

The [KML 2.2](http://en.wikipedia.org/wiki/Kml) format is an open standard developed by the [Open Geospatial Consortium](http://en.wikipedia.org/wiki/Open_Geospatial_Consortium). It's used in many closed-source spatial data viewers, such as the very popular Google Earth and Google Maps. KML is also supported in open-source viewers such as [Marble](http://edu.kde.org/marble/), from the KDE project (see Comments below). The [Worldwind](http://worldwind.arc.nasa.gov/java/) viewer from NASA is an open-source Java application that can display KML files, but it's less a stand-alone viewer than an embeddable Java application.