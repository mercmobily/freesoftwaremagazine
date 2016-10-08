---
nid: '1921'
title: 'MP3: nothing to do with piracy'
authors: 'Marco Marongiu'
published: '2006-12-04 6:30:00'
tags: 'mp3,lame,mpg123,music,encoding'
license: verbatim_only
section: opinions
listed: 'true'

---
  Messing with MP3 files is, for some people, a synonym for illegal use  of copyrighted music. Well, actually it's not.


<!--break-->


  When I bought my car last year, I bought an MP3-enabled car stereo  with it. I can use it to play standard music CDs, as well as MP3 CDs  that I can master myself. Therefore I started to convert my CDs to  MP3s so that I could play them both at home and in the car, and I  don't have to carry dozens of disks with me.

  Unfortunately, my car stereo proved itself to be a bit fussy about  how CDs are mastered and how MP3s are encoded. So when I burnt a CD  with some [Toto](http://www.toto99.com/) albums I have,  it turned out that it didn't like the way I encoded them (320kbits,  variable bitrate). And I couldn't stand hearing their songs playing  for a second, then stopping for another second, then playing again for  another one and so on.

  Now you would say that it was not a big problem: I could simply put my  CDs into my laptop and encode the files differently; the problem is  that I lent the CDs to a friend that lives in Rome, and now all I had  were those MP3s... oops! My only chance was to find a way to re-encode  them.

  Encoding them would be quite easy if I had .wav files: I'd just pass  them to [lame](http://www.mp3dev.org/); but since I had MP3s,  I had to find a way to get a plain wav from them. The way was  [mp3-decoder](http://www.mpg123.org/), a tool from the  mpg123 suite.

  Now that I had all the tools it was time to go through  the files and do the job. I fired up a shell window, created a directory  under /tmp and put the "corrupted" files in it. Then I typed these:


=CODE_START=


for DIR in /tmp/corrupted/*
do
  echo "$DIR"
  DEST="$HOME/mp3/toto/$DIR"
  mkdir -p "$DEST"
  ( cd "$DIR" && \
    for FILE in *.mp3 ; do echo "  > $FILE" ; \
      mp3-decoder -w - "$FILE" | lame -b 256 - "$DEST/$FILE" ;\
    done )
done


=CODE_END=

  Here I am cycling over the two directories I copied into `/tmp/corrupted`,  each one of them containing the MP3s of a single album. I have echo  telling me what directory we are processing, then set the destination  directory into the variable DEST and creating it; if the whole path is  not there, the "`-p`" option of mkdir allows me to make the whole path at  once. After that I get into a subshell (using the left parenthesis),  get into the directory and process each file, one by one. Again, echo  tells me which file we are processing, then mp3-decoder will read the  MP3 file we are processing, and output it to the standard output (the  "`-`" in the command line) in WAV format (option "`-w`"). The standard output  of mp3-decoder is then piped into the standard input of lame (in this  case the "`-`" in the lame's command line means the standard input), which  will encode it at 256 kilobit, fixed, to the file "$DEST/$FILE". Once  both the cycles are over, I had my CDs correctly encoded and sitting in  the my home's mp3/toto subdirectory.

  Neat, huh?


>Seems the world needs a change in its attitudeIt doesn't seem like there's much that a man can doThey try to sell the earth on a wild crusadeThen complain about not bein' paid  -- "Never Enough", in "Kingdom of Desire", Toto ©1992

