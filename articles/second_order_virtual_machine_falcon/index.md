---
nid: '3164'
title: 'A second order virtual machine with Falcon'
authors: 'Giancarlo Niccolai'
published: '2009-07-03 8:21:56'
tags: 'falcon,scripting'
license: verbatim_only
section: hacking
listed: 'true'

---
Lately, the [Falcon Programming Language](http://www.falconpl.org) has attracted growing interest and excited a deal of curiosity.

In this article I'll document some unique features of Falcon that allow users to build easily what I define as a "second order virtual machine". Despite the ominous-sounding name, it's a very practical topic: with less than one hundred lines of code, you will be able to write your own special commands that can be used, for example, as dynamic configuration files.

One practical purpose we have found is to configure the automatic binding generator, which requires quite articulated configuration. Pushing this to the limit it's possible to create a complete specialized programming language directly inside and beside Falcon.

## Basic working principles

In Falcon, arrays are callable items, provided that the first element is callable. So...

=CODE_START=
printl( "Hello world" )
// and
[ printl, "Hello world"]()
=CODE_END=

achieves the same result.

Suppose your task at hand requires a sequence of steps to be executed one after another; for example:

* Hail the user
* Copy file "a" in "b"
* Remove file "a"
* Say goodbye.

A direct implementation in Falcon would look like this:

=CODE_START=
printl( "Hello, user!" )
fileCopy( "a", "b" )
fileRemove( "a" )
printl( "Goodbye, user!" )
=CODE_END=

Or, using the dot-array notation:

=CODE_START=
.[printl "Hello, user!" ]()
.[fileCopy "a" "b" ]()
.[fileRemove "a" ]()
.[printl "Goodbye, user!" ]()
=CODE_END=

Now, how can you make this sequence "variable", so that you can invoke it on demand and/or change it?

A first, a very rudimentary second level virtual machine may just take an array of callable items, to be executed in turn. So:

=CODE_START=
sequence = .[
   .[printl "Hello, user!" ]
   .[fileCopy "a" "b" ]
   .[fileRemove "a" ]
   .[printl "Goodbye, user!" ]
]

for elem in sequence
   elem()
end
=CODE_END=

The last step is to externalize the sequence, so that the main "engine" stays separate from the program/data that it has to interpret. For this task, we need to use the `compiler` module, through which we can load and manipulate external Falcon scripts.

=CODE_START=
/* in config.fal */
sequence = .[
   .[printl "Hello, user!" ]
   .[fileCopy "a" "b" ]
   .[fileRemove "a" ]
   .[printl "Goodbye, user!" ]
]

/* in engine.fal */
load compiler

// create the compiler and load the module
c = Compiler( "." )
module = c.loadFile( "config.fal" ) 

// give the module a chance to initialize, executing it's main body
module.get("__main__") ()

// import the "sequence" result:
sequence = module.get( "sequence" )

// call all the elements in the sequence.
for elem in sequence
   elem()
end
=CODE_END=

With these basic building blocks we can construct a more sophisticated second order virtual machine or, in other words, b build our own language (extension) to deal with the problem at hand.

## More formal definition
A loop executing a variable sequence of executable items is a second order VM in its simplest form, but a more formal definition can be helpful. Let's define a "Second order VM" as an entity processing a sequence, step by step:

=CODE_START=
class SecondVM
   stack = []
   status = nil
   sequence = nil
   pos = nil
   
   function process( sequence )
      // ... more later...
   end
end
=CODE_END=

## Implementing commands

So, a sequence can contain anything coming from the host virtual machine. This includes instances of classes, where we can easily specify the structure of a new command that we want our virtual machine to execute.

We can define "a command" as an item with some parameters which does things on the virtual machine when running. Something like the following:

=CODE_START=
class Command( pcount )
   pcount = pcount

   function run( vm )
      raise CodeError( 0,
         "You should have re-implemented 'run'" )
   end
end
=CODE_END=

For example, we can implement the commands 'say' 'copy' and 'remove' that simply map to the Falcon functions I used in the examples so far:

=CODE_START=
object say from Command(1)
   function run( vm, thingToSay ): > thingToSay
end

object copy from Command(2)
   function run( vm, source, dest ): fileCopy( source, dest )
end

object remove from Command(1)
   function run( vm, tgt ): fileRemove( tgt )
end

// ask to export all the symbols
export
=CODE_END=

Now, we are able to write `config.fal` using these commands directly:

=CODE_START=
/* in config.fal */
sequence = .[
   say "Hello, user!"
   copy "a" "b"
   remove "a"
   say "Goodbye, user!"
]
=CODE_END=

Now the VM knows how many tokens in the sequence are to be sent to the commands and how to call them. Let's complete the `process` method of the virtual machine. We just need to check the type of the items in the sequence and create a dynamic call extracting enough parameters. A bit of bound and consistency checking are in order; usually these things are left "as an exercise for the reader" but in this case it may be interesting to see how it's possible to check for the required  available interface.

=CODE_START=
   function process( sequence )
      // save sequence and position each time, we'll need them
      self.sequence = sequence
      self.pos = 0
      p = 0
      while p < sequence.len()
         
         command = sequence[p]
         // is this really a command as expected?
         if not command.derivedFrom( Command )
            // for simplicity, we just raise a string, which is ok
            raise "Malformed sequence at step " +
                  p +  " (not a command)"
         end

         if command.pcount + p >= sequence.len()
            raise "Malformed sequence at step " +
                  p +  " (not enough parameters)"
         end

         // already advance to the next position
         self.pos = ++p + command.pcount
         
         // execute the command
         (.[ command.run self ] +
            sequence[p : self.pos] )()

         // advance to next position
         p = self.pos
      end
   end
=CODE_END=

The interesting part is the way the command is built, after the //execute the command// comment. An array composed of the run method on the found command, self (the VM that the command receives as the first parameter) and a portion of the sequence is formed on the fly and called directly.

##Sub-sequences and branches

However simple a configurable action set is, you'll want to have some control on command execution. For example, we may want to report an error to the user if the copy operation failed. This can be done easily, introducing the concept of sub-sequences, as in the following example.

=CODE_START=
/* in config.fal */
sequence = .[
   say "Hello, user!"
   // will the copy work?
   test .[copy "a" "b"]
      // yes?
      .[ remove "a"
         say "The copy was successful" ]
      // no?
      .[ say "Sorry, copy failed" ]

   // back to the main sequence.
   say "Goodbye, user!"
]
=CODE_END=

So, `test` must be a command that verifies if things went right or wrong; in the first case, it will ask the VM to execute the first parameter, otherwise it will execute the second one.

The most direct way to store a consistent state for the "last operation" is that of having it stored in the VM, which is accessible by every command. Also, to save the status of the current sequence, we'll need to push it before entering into the new sequence, and restore it before returning to the main source.

So, the first thing to do is to modify the commands so that they set the VM status according to their success.

=CODE_START=
object copy from Command(2)
   function run( vm, source, dest )
      try
         fileCopy( source, dest )
         vm.status = true
      catch IoError
         vm.status = false
      end
   end
end

object remove from Command(1)
   function run( vm, tgt )
      try
         fileRemove( tgt )
         vm.status = true
      catch IoError
         vm.status = false
      end
   end
end
=CODE_END=

And then the `test` command; this command needs to run the test sequence and run one of the two sub sequences depending on the status of the VM; it may be useful having the ability to push a state as a service of the virtual machine. So, let's add a `processSubSequence()` function to the virtual machine first.


=CODE_START=
...
   function processSubSequence( seq )
      // use POOP this time
      self.stack += bless( [
         'sequence' => self.sequence,
         'pos' => self.pos ] )

      self.process( seq )

      // retrieve the previous saved status.
      last = self.stack.tail()
      self.sequence = last.sequence
      self.pos = last.pos
   end
...
=CODE_END=

So, the **test** command becomes very simple.

=CODE_START=
object test from Command(3)
   function run( vm, cond, onTrue, onFalse )
      // defaults to true
      vm.status = true
      vm.processSubSequence( cond )
      if vm.status
         vm.processSubSequence( onTrue )
      else
         vm.processSubSequence( onFalse )
      end
   end
end
=CODE_END=

## The final program

In these kinds of applications, I prefer to keep the commands in a separate module, so that they can be easily checked and modified. So, we'll have two sources, one where the commands and the base class `Command` is stored, and the other where the virtual machine class and the main code are stored.

=CODE_START=
/* commands.fal */

class Command( pcount )
   pcount = pcount

   function run( vm )
      raise CodeError( 0,
         "You should have re-implemented 'run'" )
   end
end


object say from Command(1)
   function run( vm, thingToSay ): > thingToSay
end


object copy from Command(2)
   function run( vm, source, dest )
      try
         fileCopy( source, dest )
         vm.status = true
      catch IoError
         vm.status = false
      end
   end
end


object remove from Command(1)
   function run( vm, tgt )
      try
         fileRemove( tgt )
         vm.status = true
      catch IoError
         vm.status = false
      end
   end
end


object test from Command(3)
   function run( vm, cond, onTrue, onFalse )
      // defaults to true
      vm.status = true
      vm.processSubSequence( cond )
      if vm.status
         vm.processSubSequence( onTrue )
      else
         vm.processSubSequence( onFalse )
      end
   end
end


// ask to export all the symbols
export
=CODE_END=

In the main module, we need to load the commands file:

=CODE_START=
/* engine.fal */

load compiler
load commands

//===================================
// The SecondVM class

class SecondVM
   stack = []
   status = nil
   sequence = nil
   pos = nil

   function process( sequence )
      // save sequence and position each time, we'll need them
      self.sequence = sequence
      self.pos = 0
      p = 0
      while p < sequence.len()

         command = sequence[p]
         // is this really a command as expected?
         if not command.derivedFrom( Command )
            // for simplicity, we just raise a string, which is ok
            raise "Malformed sequence at step " +
                  p +  " (not a command)"
         end

         if command.pcount + p >= sequence.len()
            raise "Malformed sequence at step " +
                  p +  " (not enough parameters)"
         end

         // already advance to the next position
         self.pos = ++p + command.pcount

         // execute the command
         (.[ command.run self ] +
            sequence[p : self.pos] )()

         // advance to next position
         p = self.pos
      end
   end

   function processSubSequence( seq )
      // use POOP this time
      self.stack += bless( [
         'sequence' => self.sequence,
         'pos' => self.pos ] )

      self.process( seq )

      // retrieve the previous saved status.
      last = self.stack.tail()
      self.sequence = last.sequence
      self.pos = last.pos
   end
end

//===================================
// main code

// create the compiler and load the module
c = Compiler( "." )
config = args.len() ? args[0] : "config.fal"
module = c.loadFile( config )

// give the module a chance to initialize, executing it's main body
module.get("__main__") ()

// import the "sequence" result:
sequence = module.get( "sequence" )

// Perform processing on the loaded sequence.
vm = SecondVM()
vm.process( sequence )
=CODE_END=

You'll notice I've have also taken care to give an optional command line parameter in order to be able to load a different file.

Also, one more relevant thing is to note: the items in the commands module work with the virtual machine defined in the main module but they don't need to load the main module to be able to work with it. By the time they get to work with the virtual machine, that object is well known to the Falcon engine, and Falcon is able to resolve dependencies on the fly.

The module loaded by the main engine (in our case, `config.fal`) is a full Falcon script. It inherits the global symbols loaded by the main script (that is, the objects representing commands) and it may do quite complex things. For example, it may be a Falcon script dynamically building the sequences, or the commands in the sequence may call standard Falcon functions (coming from other modules) to perform some task.


## Conclusion

There is much fine-tuning that may be applied to this program (the first that comes to mind is, in case of error, to print the call stack trace rather than just the current sequence/position pair), but this simple demonstration in less than one hundred lines (if you take out the "cosmetic" lines) shows a powerful method to provide dynamic configuration for specific applications or tasks, and also reveals the flexibility of some constructs commonly found in functional programming paradigm based languages.

Even if you do not require such a sophisticated configuration facility, you may find some of the techniques documented in this article useful in many other application fields.