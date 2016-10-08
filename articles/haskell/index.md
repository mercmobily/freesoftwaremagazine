---
nid: '1160'
title: Haskell
authors: 'John Goerzen'
published: '2005-06-29 11:00:57'
issue: issue_05
license: cc-by-sa
section: hacking
listed: 'true'

---
Many programmers are fluent in several programming languages. Most of these languages have some things in common. Loops and variables are fundamental features of most languages.

I want to show you a different way of solving problems. Haskell takes a different approach than you’re used to—to just about everything.


# Why Haskell is interesting?

There are quite a few things about Haskell that make it interesting and unique:


* Haskell has no loops because it doesn’t need them. There is no “for” or “while” in Haskell.
* Haskell has no equivalent of the variables that you’re used to; it doesn’t need them either.
* Haskell is a functional language. In a language like Java or Python, your primary view of the world is an object. In Haskell, your primary view of the world is a function. I like to say that Haskell manipulates functions with the same ease that Perl manipulates strings. In Haskell, it’s commonplace to pass around bits of code. This is a powerful concept.
* Haskell functions are also pure. Every time they’re called with the same arguments, they’ll return the same result. Functions in most languages can return different results each time they’re called. The results may depend on things like a global counter or I/O. Haskell functions also have no side-effects. They won’t stomp over a global variable.
* Haskell is a lazy language. It never performs a computation unless it needs to. This is not just an optimization; it’s a powerful way to view the world. Code that could be infinite loops or consume vast amounts of memory in other languages are simple, everyday tools in Haskell.
* Haskell can be either interpreted or compiled to native machine code. It also interfaces easily with C. You can call C functions from Haskell with a minimum of hassle. Usually, you’ll only need 2 or 3 lines of code to accomplish the call. Haskell also has interfaces to Java, .NET, and Python.


=ZOOM=Haskell takes a different approach than you’re used to—to just about everything=


* Haskell lets you write code in a surprisingly intuitive way. Reading Haskell code is easy, and reasoning about Haskell code is easy, too. You’ll have less need for a debugger with Haskell.

To get you started, here’s an example for a simplistic grep, written in Haskell:


=CODE_START=

import MissingH.List

main = do
   c <- getContents
   putStr (unlines(filter (\line -> contains "Haskell" line) 
                          (lines c)))


=CODE_END=

This will simply read data from standard input and display all lines containing the word “Haskell” on standard output. I’ll go through this example in more detail and show how it works later in this article.


# The Haskell toolbox

To get started with Haskell, you’ll need a compiler or interpreter. The most popular compiler is GHC, available from the [GHC web site](http://www.haskell.org/ghc/). Some Linux or BSD distributions have GHC packages available; look for a package named `ghc` or `ghc6`. If your operating system doesn’t have packages available, sources and binaries for many systems are available from the GHC homepage.

The GHC package actually includes a compiler (ghc) and an interpreter (ghci). Use whichever you like. If you prefer a smaller package that includes only an interpreter, try Hugs also from the [HUGS web site](http://www.haskell.org/hugs/). Many distributions also contain Hugs packages.

Both GHC and Hugs come with a basic library of Haskell code called fptools. A reference is available from [GHC's site](http://www.haskell.org/ghc/docs/latest/html/libraries/index.html).


=ZOOM=Haskell manipulates functions with the same ease that Perl manipulates strings=

The examples in this article will also use functions from [MissingH](http://quux.org/devel/missingh/), a library of useful functions written in Haskell. Many other Haskell libraries are also available for use. See the links at the end of this article for more information.

To compile a Haskell program with `ghc`, you could use a command such as


=CODE_START=

ghc --make -o program program.hs 


=CODE_END=

The examples here use MissingH, so you’ll need to add


=CODE_START=

-package MissingH 


=CODE_END=

at the beginning of your `ghc` command line. You can run Haskell programs with Hugs by saying


=CODE_START=

runhugs program.hs


=CODE_END=


# Laziness at work

The grep example at the beginning of this chapter probably doesn’t make much sense yet. Here’s another version of it that does exactly the same thing, but breaks down the code into more manageable pieces:


=CODE_START=

import MissingH.List

filterfunc line = contains "Haskell" line

main = do
   c <- getContents
   let inputlines = lines c
   let outputlines = filter filterfunc inputlines
   let outputstring = unlines outputlines
   putStr outputstring


=CODE_END=


<!--pagebreak-->


Let’s analyze this version. First, I import the `MissingH.List` module. This module has the `contains` function that I’ll be using.

Next, I create a function named `filterfunc`. It takes one parameter, `line`. It calls the `contains` function, passing it two arguments: the string `“Haskell”` and `line`. The `contains` function returns a boolean value ( `Bool` type in Haskell). So, `filterfunc` takes a string and returns a `Bool`.

The next line has the `main` function. This is the entry point to the Haskell program, similar to `main()` in C programs. In Haskell, `main` takes nothing and returns an IO action. Actions will be covered in more detail later.

The main function starts by calling `getContents`. This returns the entire contents of standard input as a string. `getContents` is an IO action, so the `<-` operator is used to cause c to represent the result of evaluating the action.

Next, I set up several Haskell variables. The `inputlines` variable holds a list of strings. Each string represents one line from the input. The `lines` function takes a string, separates it by newline characters, and returns a list of the component lines.

The `outputlines` variable also holds a list of strings. It calls `filter` to eliminate all lines that don’t contain `“Haskell”`. `filter` is a function that takes a function as an argument. In this case, I pass along `filterfunc`. `filter` returns only those elements from the input list, for which, the passed function returns a `True` value. This model is quite popular in Haskell, and is a very simple illustration of passing functions around.

Then, the `unlines` function is called to combine this list of lines back into a string. Finally, this resulting string is printed.

If this program is looked at from a traditional perspective, it will appear poorly written. It might appear that it starts by reading the entire file into memory—a bad thing if your file is huge. Not so in Haskell.

In Haskell, a string is a list of characters. Because Haskell is lazy, elements of a list are only evaluated when their contents are required for computation. And they can be garbage-collected whenever the compiler knows they won’t be needed again. So, when you see `c <- getContents`, nothing actually happens right then.

In fact, nothing at all happens until the very last line in the program. That line demands the content from `outputstring`, which in turn follows up until it reaches `getContents`. It’s only now that input is read.


# Types and patterns

Haskell is a strongly-typed language like Java or C. However, you probably noticed that I supplied no typing information at all in the grep example. That’s because Haskell has another unique feature: type inference. This means that Haskell can automatically determine the type of a piece of data by looking at how it is created and used in a program. Haskell can still catch type errors at compile time, but it saves you from the effort of manually declaring types all the time.


=ZOOM=Haskell can automatically determine the type of a piece of data by looking at how it is created and used=

Types can be manually declared for clarity or to make the type more restrictive than the inferred type. Here’s an example of the grep program with explicit types given:


=CODE_START=

import MissingH.List

filterfunc :: String -> Bool
filterfunc line = contains "Haskell" line

main :: IO ()
main = do
   c <- getContents
   putStr $ (unlines . filter filterfunc . lines) c


=CODE_END=

The declaration for `filterfunc` says that it takes a `String` and returns a `Bool`. If it took more parameters, you could put more arrows and types in the line; the very last one is the return value.

Types are closely related to patterns. For example, say that you wanted to write your own `filter`. Here’s a way it might be done:


=CODE_START=

import MissingH.List

filterfunc :: String -> Bool
filterfunc line = contains "Haskell" line

myfilter :: (a -> Bool) -> [a] -> [a]
myfilter _ [] = []
myfilter f (x:xs) = 
  if f x
   then x : myfilter f xs
   else myfilter f xs

main :: IO ()
main = do
   c <- getContents
   putStr $ (unlines . myfilter filterfunc . lines) c


=CODE_END=

The `myfilter` function is the new and interesting one here. Before I discuss how it works, there are several interesting things to note about its type declaration. This function is said to be polymorphic because it works on items of many different types. In this case, it can take a list of any type of item, a function that takes one of those items, and returns a list of the same type of items. The `a` in the type declaration represents this. The first parameter to `myfilter` is given to be a function itself. The second parameter is a list of items, and the return value is a list of the same type of items.

Next, I declare the function itself. The line `myfilter _ [] = []` means that if myfilter is called with an empty list, it returns an empty list. The underscore is a wildcard and means that it doesn’t matter what function is supplied. In fact, `_ []` is a simple instance of pattern matching in Haskell.

The next line contains `myfilter f (x:xs)`. In Haskell, the colon represents the list you get by adding a single item to the beginning of the list. So, this pattern will put the first item of the list into `x`, and the rest of the list into `xs`. Note that `xs` may be empty if the list has only one item.

Now, the passed function is called, passing in the current item. If the function returns `True`, the return value can be thought of as being the current item plus the result of filtering the rest of the list. Hence the line containing `x : myfilter x xs`. This becomes the return value; the function calls itself. This is recursion, and is the most common way to achieve in Haskell what would be looping in other languages.

You can also define your own data types in Haskell. Here’s an example:


<!--pagebreak-->



=CODE_START=

data Maybe a = Nothing | Just a


=CODE_END=

This defines a new polymorphic type, `Maybe a`. A value of type `Maybe a` can be created in two ways. First, you could simply say `Nothing`. Secondly, you could say `Just x`, where `x` is some value of type `a`. Pattern matching works just as well with custom types as it does with built-in types.

The `Maybe` type is, in fact, such a useful pattern in Haskell that it is defined for you in the Haskell `Prelude`—the set of functions and types available to every Haskell program. Functions that may either compute a value or generate an error frequently use `Nothing` to indicate a problem, or `Just x` to indicate a successful calculation.


# Functions

A little bit of the versatility of Haskell’s functions has been seen already, when a function was passed to a filter. I’ll now look at some other things you can do with functions.

In the first grep example, there was this line: `\line -> contains “Haskell” line`. It declared a new function on the spot. The backslash begins a declaration. The function took one parameter ( `line` ), and calculated its result by applying the part on the right. Functions declared like this are often called anonymous functions because they are never bound to a name.

As you’ve probably noticed, to call a function, you list its name and all parameters to it, separated by a space. There is a unique twist to that. The `contains` function is defined in MissingH with this type:


=CODE_START=

contains :: [a] -> [a] -> Bool


=CODE_END=

Since a `String` is a list of `Char` s in Haskell, this works well for filtering `String` s.

Say c `ontains` is called with only one argument. In most languages, that will generate an error. In Haskell, however, it returns a new function, with the leading arguments no longer needing to be specified. This is called partial application. So, the type of `contains “Haskell”` is `String -> Bool`. Note that the type isn’t `[a] -> Bool`. Because the first argument was given as a `String`, we know the next argument must also be a `String`.

So, instead of saying `\line -> contains “Haskell” line`, I could have said simply `contains “Haskell”`.

Did you notice the last line of the last grep example looked unusual? That line was:


=CODE_START=

   putStr $ (unlines . myfilter filterfunc . lines) c


=CODE_END=

The period is a function composition operator. In general terms, where `f` and `g` are functions, `(f . g) x` means the same as `f (g x)`. In other words, the period is used to take the result from the function on the right, feed it as a parameter to the function on the left, and return a new function that represents this computation. The dollar sign is a bit of syntactic sugar that simply removed the need to put everything after `putStr` in parenthesis.


# Variables

Recall that I said that Haskell has no variables in the conventional sense. You might be wondering about the let statements in the second grep example. Haskell does have “variables”, and `let` is one way to declare them. A Haskell variable doesn’t hold a value and can’t be modified. Instead, a Haskell variable tells the compiler, “if you ever need to know the value of x, here’s how you calculate it.” Assigning something to a variable doesn’t cause it to be calculated; in fact, if the value is never needed, it will never be calculated. Thus, a variable in Haskell is just a shortcut, similar to a macro in some other languages.


# Monads and I/O

You’ve seen a very small bit of the power of functions so far. Monads are used to combine functions together in a way similar to the period operator, feeding the result of one to the input of the next. However, monads provide more capabilities. For instance, a monad can abort the processing of an entire chain when there is a problem anywhere along it. The `Maybe` monad, for instance, can receive `Just 5` from one function, pass `5` to the next, receive `Just 6` from it, pass `6` to the next, and continue doing that across many functions. If any function returns `Nothing`, the computations stop, and the result of the entire computation becomes `Nothing`. Otherwise, the result of the entire computation is the result of the last function in the chain.

I/O was historically a tricky problem for pure languages like Haskell. A function that reads data from the keyboard obviously can’t be guaranteed to return the same thing each time it is invoked.

In Haskell, the `IO` monad is used. The `IO` type is opaque, meaning that a Haskell program can’t see “inside” it. By using constructs like `<-`, however, things can be read and written. The `<-` operator extracts the value from the inside of a monad type and assigns it to a variable. If you were using the `Maybe` monad and wrote `x <- Just 5`, then `x` would evaluate to `5`.

The `IO` monad is inescapable, however. Once you call `IO` functions, your return value will be in the `IO` monad. That is, your return type might be `IO Int` or `IO String`. This provides a neat way of segmenting impurities.

Typically, Haskell programs are structured so that the outermost layers are in the `IO` monad, and computations are outside of it. The main function returns `IO ()`—an empty value in the `IO` monad. So, to execute a Haskell program, the compiler simply evaluates the I/O action that main represents, calling other functions as needed along the way.


# Typeclasses: OOP in reverse

Object-oriented programming (OOP) is a fixture of many languages. OOP, in general, permits you to write code that accepts an object or any child of that object. It’s a way to conceptualize the view of the world.

Haskell provides something similar called typeclasses. Typeclasses let your functions take data of any type, so long as a particular interface for that type exists. Instead of preventing access to the internal representation of data in an object, typeclasses, Haskell provides a way to handle many different types of data in a generic way.


=ZOOM=Instead of preventing access to the internal representation of data in an object, typeclasses, Haskell provides a way to handle many different types of data in a generic way=

For instance, there is a built-in function called `show`. The `show` function can generate a string representation from many different data types. Its type is this:


=CODE_START=

show :: Show a => a -> String


=CODE_END=


<!--pagebreak-->


This can be read as “The show function takes any value of type `a`, such that `a` is part of the typeclass `Show`, and returns a `String`.” You can say `show “Hi”`, or `show 5.0`, or even `show True`, and get a valid `String`.

You can add your own data types to the Show typeclass very easily:


=CODE_START=

data MyType = Red | Blue
instance Show MyType where
  show Red = "Red"
  show Blue = "Blue"


=CODE_END=

The `Show` class itself could be defined like this in the Prelude:


=CODE_START=

class Show a where
  showsPrec :: Int -> a -> ShowS
  show   :: a -> String 
  showList :: [a] -> ShowS

  showsPrec _ x s = show x ++ s
  show x      = showsPrec 0 x ""
  showList = ...


=CODE_END=

Here, it can be seen that to be an instance of `Show`, normally three functions would have to be provided. However, in this case, defaults are provided, so really, only one function is required.

Typeclasses are powerful abstractions in Haskell. The `Num` typeclass, for instance, is used to provide an abstraction of arithmetic operators. The type of (+), the function representing the + operator, is `Num a => a -> a -> a`. Numeric types are all instances of `Num`, and thus + can be used with many different types of numbers. You can invent your own numeric types and, by simply making them instances of `Num`, all existing numeric operators will work with them.


# Conclusion

Haskell is a powerful and flexible language. Its approach to solving problems is unique and refreshing. The ability to combine functions is powerful and time-saving. There is a great deal of power in Haskell, which is easily tapped, but a magazine article such as this can barely scratch the surface. I encourage you to seek out more detailed resources about Haskell.

Here are some resources for more information on Haskell.

For general information, look at:


* The Haskell home page [haskell.org](http://www.haskell.org)
* The Haskell wiki [haskell.org/hawiki](http://www.haskell.org/hawiki)

Tutorials and references:


* [Haskell online resources](http://www.haskell.org/learning.html)
* [Yet Another Haskell Tutorial, in my opinion the best Haskell tutorial available](http://www.isi.edu/~hdaume/htut/)

Libraries and code:


* Haskell at Freshmeat [freshmeat.net/browse/834/](http://freshmeat.net/browse/834/)
* Libraries in Haskell [haskell.org/libraries](http://haskell.org/libraries)
* Applications in Haskell [haskell.org/practice.html](http://haskell.org/practice.html)
* Libraries wiki page [haskell.org/hawiki/LibrariesAndTools](http://haskell.org/hawiki/LibrariesAndTools)



