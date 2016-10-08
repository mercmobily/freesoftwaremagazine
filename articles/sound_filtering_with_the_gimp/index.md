---
nid: '2541'
title: 'Sound filtering... with the Gimp!'
authors: 'Gianluca Pignalberi'
published: '2008-02-25 0:44:17'
tags: 'gimp,graphics,sound,filter,arse'
issue: issue_21
license: cc-by-nc-sa
section: end_users
main_image: hide.jpg
listed: 'true'

---
Gimp is universally used for image manipulation. However, with a bit of creativity and a couple of tricks, it can also be used as an audio filter! Here is how...

<!--break-->

# Sound filters

If you are familiar with sound filters, you can skip this introduction. For those of you who don’t know about filters, here is a brief explanation.

A sound, like all signals, is measured in Hz (Hertz). That measure expresses the signal frequency. The lower the measure, the lower the frequency. A filter is a tool that enhances one or more signal frequencies, according to a criterion. In an ideal world, a filter completely suppresses undesired frequencies. Unfortunately, we don’t live in an ideal world.

=ZOOM=A real low-pass filter is something that receives an input signal and outputs its low frequency components=

I will concentrate on a single filter: [low-pass](http://en.wikipedia.org/Low-pass_filter.html). A real low-pass filter is something that receives an input signal and outputs its low frequency components. To be more precise, it _attenuates_ those frequencies higher than a set one (the _cut-off frenquency_). As you see in figure 1, it just approximates theoretical behavior.

=IMAGE=filter_function.jpg=Figure 1: Frequency response of real and ideal low-pass filter=

In this article I propose a three-step method to achieve an ideal low-pass filter for sound signals.  Gimp is the key tool for this method. Of course, I’m cheating: I need to use a program that transforms a sound file into a suitable image. Then, I can “low-pass filter” that image and get back the filtered sound from it.

Note that I put "low-pass filter" in quotes: I won’t get Gimp to apply an _image_ low-pass filter (i.e., a blur operator). But, be patient: in a few lines I’ll unveil the “trick”.

# Pre- and post- sound processing with Arse

Before passing it to Gimp, the input sound needs to be processed. I chose  [Arse](http://arse.sourceforge.net/) as the preprocessing tool. Arse, short for "Analysis and Reconstruction Sound Engine", is a command line tool divided into two main parts: a spectrographer and a [spectrogram](http://en.wikipedia.org/Spectrogram.html) synthesizer. I’ll use both its tools to pre- and post-process an audio file. In the pre-processing step I input a sound to Arse, which outputs a spectrogram (that is an image, good to input to the Gimp). In the post-processing step, I provide Arse with the filtered spectrogram, to have an audio file as output.

=ZOOM=Unfortunately, generating a signal’s spectrogram and synthesizing it again with Arse won’t lead to the original signal=

Unfortunately, generating a signal’s spectrogram and synthesizing it again with Arse won’t lead to the original signal. It means that the method I’m  proposing is theorically perfect, but you can’t  use it effectively without accepting some sound tranformations (i.e., a bass sound played as a piano sound, or a human voice played as a synthetic voice). Anyway, go ahead: a clever use of Arse will give you pretty good results. I don’t know whether a tool more efficient and reliable than Arse exists or not; if yes, use it and verify the results—and let me know!

<!--pagebreak-->

The image Arse generates has the following features: 

* it is grayscale (black pixels are silence);
* its rows are the analysis of a frequency band;
* each column represent a second of the signal.

In figure 2 you see the user interaction with Arse, while figure 3 provides you with a signal, its spectrogram and the synthesis graphs.

=IMAGE=arse_command_line.jpg=Figure 2: A screenshot which shows how to use Arse to run sound analysis and spectrogram synthesis=

Arse is a very young project, the current version is 0.1. It has some major limitations. The author describes them the project's web site and in the README given along with the program, where you can also read more about its use and specifications.

=IMAGE=AnSyA.jpg=Figure 3: Analysis and synthesis of drama.wav’s sample, a file given along with the OpenOffice suite. From right to left: original signal, spectrogram, and reconstructed signal=

# The proposed low-pass filter

Once you’ve got the spectrogram, open it with Gimp. Remember that spectrogram’s row 0 contains the highest frequency information, and row _n_ contains the lowest. Low-pass filtering a "frequency range" consists in coloring black the rows of pixels between 0 and _x_, where _x_ is the row where the cut-off frequency is located. To do it, select the proper rectangular section of the image, and then flood fill it black. That’s all: you will have suppressed the frequencies higher than the cut frequency, _without_ affecting the others: the sort of things an ideal filter does.

# Conclusion

In this article I proposed a method (a transformation) to get an ideal filter. Such a transformation allows you to low-pass filter a sound through its spectrogram image. Synthesizing the “filtered” image should give the corresponding low-pass filtered sound. At the moment the only reason why the transformation doesn’t work is because of the postprocessing tool. Once Arse improves, you’ll get a proper ideal low-pass filter.