---
nid: '3590'
title: 'The falcon virtual machine: an organic virtual machine shown with practical examples'
authors: 'Giancarlo Niccolai'
published: '2011-08-04 21:25:32'
tags: 'programming,virtual-machine,performace,faster'
license: verbatim_only
section: hacking
listed: 'true'

---
At the beginning of 2011, the Falcon Committee decided to release version 1.0 of the Falcon Programming Language during the year. After a bit of discussion and planning, we begun working on a new version of the engine to support some constructs we wanted to add to the language: mostly rules and structured prototypes. Also, we spotted the possibility to add fuzzy logic and evolutionary programming (A-Life) constructs directly into the language. We now have a working prototype of what we’re calling the "Organic Virtual Machine". And surprise: other than being more flexible, it's even **way faster** than before. Here, we'll briefly discuss about the structure of this virtual machine, and show some sample code both at the language and application integration level showing how it interfaces with its surroundings environment.

# What's organic about the new Falcon VM?

A program is made of moving electrons and magnetic fields on silicon chips, at a physical level, or it is build up of ideas at the macro level. Neither electrons nor ideas are associated with the concept of "organism"; and you can say they are associated with the concept of "living" even less.

Yet, organic things are made of pretty hard stuff. Water, carbon, and a bunch of other common minerals and acids. And the hardware of the mind is just a bunch of electrons and chemical substances moving through different areas (chemical fields?) on neural structures.

Since a few years we have come to understand that the "organismic" of things is not due to their physical structure, but to how they are internally organized and how they interact with the surrounding environment.

However, this is not an article about complexity science, and not even about evolutionary programming; we want to show some macroscopic outcomes of our work and explain some inner detail of its implementation. 

Yet, we think that our virtual machine, that is, the thing that executes elementary instructions carrying out the task to perform a program written in Falcon language is "relatively organic", as it has been designed to deliberately have some features of organic beings:

=ZOOM=Yet, we think that our virtual machine [...] is "relatively organic".=

* It feeds (on data).
* It evolves -- changing internally its structure with time.
* It "consumes itself", feeding on its own structure to stay alive.
* It replicates itself (or parts of itself) at certain stages.
* It eventually "dies" when it cannot cope with the surrounding environment.

But the wonders(TM) of the new Falcon engine are not limited to a VM that has some evolutionary aspects burned in its own structure; there are many interesting aspects that involve the way the engine handles data and code.

# Data and code in the Falcon 1.0 engine.

Yes, we're keeping them separate -- or, well, sort of. It might seem strange given the fact that programming languages are going towards the data-is-code paradigm, but we have several good reasons for that. Again, this concept is marginal in this article, but this has to do with what I have defined "evolutionary symbolic computation". When data-is-code, in evolutionary programming you need to have some way to make the data to perform some action: in other words, you need to map data with behavior. Also, you need some way to create data that can possibly perform "correct" behavior, filtering out "impossible data". Nature has one very efficient way to select "correct" data in evolutionary process: corrupted data usually doesn't live long -- a faulty DNA will fail to create some vital parts of its cell. But contrarily to nature, time is crucial for us: we might not want to wait so much time, or we might have some crucial problem when code might perform some invalid operation before we discover that. Finally, if the need of extracting **meaning** from the code (which is just meant to have a "behavior") arises, using undifferentiated data for that might make this step of "understanding" what has been evolved may be hard to impossible. Having some symbolic representation of the code that **must** stay valid at any transformation helps to rule this problems out.

So, we're keeping data and code separate, but not that much. In fact, any data slice can contain code, and code will refer directly to data. They are separate, but at the same time they live together, so we can easily __treat__ code as data when needed or useful.

# But what is Falcon code?

Up to the previous version of the engine, we opted for a pretty traditional virtual machine executing PCODEs: simple "instructions", internally represented by a single byte, on which the VM switched, much similarly to a wired silicon CPU. That's the strategy adopted by the vast majority of modern virtual machines.

In the Falcon 1.0 engine, the code is represented by a syntactic tree. The syntactic tree defined by the source code is exactly the code executed by the virtual machine.

=ZOOM=The syntactic tree defined by the source code is exactly the code executed by the virtual machine.=

More specifically, the virtual machine "understands" PStep entities. A PStep is to the Falcon VM what a PCODE is to a traditional VM: an atomic, elementary operation that the VM has to perform to progress. The virtual machine has a stack of PSteps to perform; each time, it will pick the topmost PStep and try to execute it. The PStep behavior is opaque to the virtual machine: internally it's a function pointer (or actually a **functor**) invoking foreign native CPU code. PSteps may do everything to the VM: they might add new PSteps to be executed, remove themselves so that the preceeding PStep in the stack can get invoked, add or manipulate data in the data stack, generate discrete code unit called "function frames" and so on. Interestingly enough, they can invoke directly other PSteps, as long as every PStep respects some simple behavior rule.

So, as a PStep can directly invoke other PSteps or post them for later invocation in the VM, the PStep structure can be used to describe **and** execute a program. Specialized PStep subclasses store and perform expressions, branches, loops and most interestingly "statement sequences". Consider the following syntactic tree in Falcon 1.0:

=CODE_START=
rule
   random_number = random(1,10)
   random_number > 5
   printl( "Number greater than 5:", n )
end
=CODE_END=

This directly creates an instance of `Falcon::RuleSynTree`, which is a subclass of `Falcon::SynTree`, a far child of `Falcon::PStep`. The specialty of RuleSynTree is that of keeping track of some things that happen to each `Falcon::Statement` it holds as it processes them. In this case, the rule knows that `random()` is a function that might return different values at each invocation, so the statement `random_number = random(1,10)` is considered "non-deterministic". When it processes the statement `random_number > 5` it will detect that statement to have evaluated to false if the `random_number` was not greater than 5, and will try to find a new solution invoking again the last non-deterministic entity; or it will fail in case it has none, or every possible way is exhausted. (Actually, the `rule` statement does much more than that, being able to unroll temporarily assigned variables, unify unbound values, perform branches and "backtrack cuts", and in general a vast part of what is done in a Prolog program -- yet it's whole code is relatively simple when compared to the other PSteps).

The code of `Falcon::RuleSynTree` is just marginally more complex than the simple `SynTree`, that we see implemented here:

=CODE_START=
a = 0
while a < 10
   printl( "A is now: ", a )
   a = a + 1
end
=CODE_END=

Here we have a SynTree holding `a = 0` and the `while` statement, which holds the expression `a < 10` and then another SynTree, representing the block to be repeated.

The SynTree, being a PStep grandchild, instructs the VM to invoke the steps it holds, and the while statement prepares the expression and then readies its own SynTree in case the expression evaluates to true.

# Synthesizing a Fibonacci number generator SynTree

To get a more precise idea of what is going on here, you can look at how a program can be built out of expressions, statements, functions and trees.

The following code is a simple test we use to benchmark the performance of the function call frame generation:

=CODE_START=
function fib( n )
   if n < 2
      return n
   else
      return fib(n-1) + fib(n-2)
   end
end

return fib(30)
=CODE_END=

And this is the C++ code that generates and runs it:

=CODE_START=
void go( int fibSize )
{
   // This is the function:
   SynFunc fib( "fib" );
   Symbol* count = fib.symbols().addLocal("n");
   fib.paramCount(1);

   // Now the IF with its two branches
   SynTree* ifTrue = new SynTree();
   ifTrue->append(new StmtReturn( count->makeExpression() ) );

   SynTree* ifFalse = new SynTree();
   ifFalse->append( new StmtReturn( new ExprPlus(
         &(new ExprCall( new ExprValue(&fib) ))->addParam(
             new ExprMinus( count->makeExpression(), new ExprValue(1))),
         &(new ExprCall( new ExprValue(&fib) ))->addParam(
             new ExprMinus( count->makeExpression(), new ExprValue(2)))
         ))
   );

   // Append the If to the syntree representing the function body.
   fib.syntree().append(
         new Falcon::StmtIf(
               new ExprLT( count->makeExpression(), new ExprValue(2) ),
               ifTrue,
               ifFalse
         )
   );

   // Have a print to see if we did it right.
   std::cout << fib.syntree().describe().c_ize() << std::endl;

   // and now the main function -- invoke our fib function
   // Notice that the fib function is a "value" to us:
   ExprCall* call_fib = new ExprCall( new ExprValue(&fib) );
   call_fib->addParam( new ExprValue(fibSize) );

   SynFunc fmain( "__main__" );
   fmain.syntree().append(
         new StmtReturn( call_fib )
   );

   // Prepare the invocation of the main code...
   Falcon::VMachine vm;
   vm.currentContext()->call(&fmain,0);
   try {
      // ...and run it.
      vm.run();

      // On top of the data stack we have our number
      String res;
      vm.currentContext()->topData().describe( res );
      std::cout << "Fibonacci number: " << res.c_ize() << std::endl;
   }
   catch( Error* e )
   {
      std::cout << "Error: " << e->describe().c_ize() << std::endl;
      e->decref();
   }
}
=CODE_END=

The virtual machine gets readied with the SynTree of the main function, which
invokes the expressions that require the `fib` function to be called. Calling
a function, at VM level, means to push a call frame and prepare its SynTree
to be executed.

In other words, the tree of symbols and relations we call "grammar" is directly processed by the VM without any other transformation.

Well, almost. Actually, some intermediate steps are optimized away; especially the infix expressions, get pre-compiled into a local stack called PCode -- an intermediate stage between a raw PStep and a SynTree -- which is able to understand some of the specific needs of infix expressions and handle them better (faster) than how they would be handled if pushed one by one in the VM for direct invocation.

But, substantially, the tree is kept processed as-is, evaluating its symbolic significance as it extends in front of the VM. And in case of need, it can change as the VM evaluates it.

# Extending the Virtual Machine.

In fact, providing new PStep doing specialized work as new conditions and problems are met is not only possible; it's the common way to solve problems with the organic virtual machine.

For instance, a function that may seem pretty simple as the `printl()` function (standard way to print values) can get very complex in scripting languages. Turning untyped and foreign items into strings might be a non-elementary task, especially if the items might want to say something about it.

Falcon supports base property overriding, and one of the base property a class or an item may want to be in charge of is the `toString` callback. If that is a foreign function, or even worse, if that's a Falcon function needing a VM to execute it to obtain a string representation of its item, this means that the `printl()` function must **descend** into another VM call.

Some scripting languages just call the VM again and wait for the result. Also, they force their user to call the VM and wait for a result. This is not an acceptable approach in the domains where Falcon was first employed; a script should have been responsive in a limited time, and it should have been possibly interrupted, suspended or resumed from any point of its execution process. Interrupting a VM being in the process of providing a partial result to a function that was inside a VM that should have been interrupted... wasn't a sensible way to handle this problem.

Other than being kind with the user programs, there was other reasons to avoid, or at least finely manage deep calls: coroutine context switches, call/cc and loop-generator schemes, quasi-asynchronous messages and message handling was part of the Falcon language, and breaking things just to allow items to provide a nicer string representation of themselves wasn't an option.

Well, the way we resolved this problem in the previous engine is not of interest here. What's interesting here is that the new Falcon 1.0 engine simply **does not allow deep calls**. Instead, it offers the ability to create any needed PStep so that deep-calling is not necessary, not even in the cases where it seem unavoidable as for "stringification" of items.

This implementation of the `printl()` function shows how foreign code can instruct the VM through direct injection of new PSteps.

=CODE_START=
class FuncPrintl: public Function
{
public:

   // This is our "next step".   
   class NextStep: public PStep
   {
   public:
   
      // the VM will invoke our "apply" function pointer:
      NextStep()
      {
         apply = apply_;
      }


      // Notice that this is also called immediately by the function itself
      // ... see the invoke() method below.
      void printNext( VMContext* ctx, int count ) const
      {
         // we know we're in the last printl call context;
         int nParams = ctx->currentFrame().m_paramCount;

         // do we need to push ourselves -- we do just the first time.
         ctx->condPushCode( this );
         while( count < nParams )
         {
            // extract the data to be printed from the nth parameter
            Class* cls;
            void* data;            
            ctx->param(count)->forceClassInst( cls, data );

            // record what parameter we're processing ...
            ++count;
            ctx->currentCode().m_seqId = count;

            // ... and invoke the stringification operator:
            ctx->pushData(*ctx->param(count));
            cls->op_toString( ctx, data );
            // Is the stringifier in need to be processed by the vm?
            if( ctx->wentDeep( this ) )
            {
               // Let's go away. The VM will call our apply_() when done.
               return;
            }

            // The op_toString was able to give us a data right now.
            // We can send it to the text output and remove it from the data stack.
            ctx->vm()->textOut()->write( *ctx->topData().asString() );
            ctx->popData();
         }

         // we're done -- remove ourselves from the top of the code stack.
         ctx->popCode();

         ctx->vm()->textOut()->write( "\n" );
         // we're out of the function.
         ctx->returnFrame();
      }

      // This is what the VM executes to evaluate this PStep
      static void apply_( const PStep* ps, VMContext* ctx )
      {
         const NextStep* nstep = static_cast<const NextStep*>(ps);

         // we're here only after an op_toString that needed deep evaluation
         // and we're sure that it left a string data for us to print.
         ctx->vm()->textOut()->write( *ctx->topData().asString() );

         // now we can proceed with the next parameter -- if any.
         nstep->printNext( ctx, ctx->currentCode().m_seqId );
      }

   } m_nextStep;

   
   FuncPrintl():
      Function("printl")
   {}

   virtual ~FuncPrintl() {}

   // This is the method invoked as "function call":
   virtual void invoke( VMContext* ctx, int32 )
   {
      // and our next-step is structured to be called immediately.
      m_nextStep.printNext( ctx, 0 );
   }
} printl;
=CODE_END=

What this `Function` subclass is doing is that of re-implement the invoked virtual method, which is immediately called by the virtual machine as it encounters an `ExprCall` expression (to be more precise, it's the ExprCall expression that invokes the `Function::invoke` method through the help of the currently active `VMContext`).

For simplicity, we decide to call immediately the work-horse of this class: the printNext method which finds the next parameter and writes it. As the method might be invoked also by the PStep, we have put it directly in the PStep subclass so that finding it from there is a bit simpler.

The first time the printNext is invoked, it pushes itself as a PStep in the current virtual machine context. If it returned now, the VM would immediately invoke its apply() function pointer (there are reasons why we didn't use a virtual function for that, but I won't discuss them here); but since we're around, we can start processing the parameters. 

Instead of determining the type of the object it has to print and print it, we just query the `Falcon::Class` of the item, which knows a lot about how to handle the item that goes with it; its `op_toString` method is responsible for taking the topmost item in the data stack and turning it into a string that represents the item itself. The method `Falcon::Class::op_toString` is a thing that the VM, or better, any PStep might easily call for various reasons; for instance, it will be called by the `Falcon::Class::op_add` override of the `Falcon::String` class (as `"Hello: " + x` is bound to stringify `x`). But hey! -- This *is* a PStep, isn't it? So, it's a rightful member of the Virtual Machine. It comes so natural that it's easy to forget about it. We're not just writing an "extension" function, we're properly "extending" the virtual machine.

If the op_toString was able to settle the problem on its own, we now have the printable string on top of the data stack; all we have to do is to print it and remove it. If op_toString wasn't able to do that in one step, i.e. if it needed to call a SynTree based function, then it has changed the top of the code stack in order to have the VM execute what's needed. This NextStep in Printl is not anymore the topmost pstep, so we'll know about this need. We just need to return; the VM will execute and then consume the PStep that are needed for us to have our string, and will call us back (via the apply function pointer) when done.

When this happens, the apply function just prints the data item, consumes it, and calls printNext again.

Once done, we signal this fact to the world by invoking a `VMContext::returnFrame` method. This instructs the virtual machine about the fact that the function started before we got called through  `invoke` is now complete, and all that it has done (pushing data on the stack, or code to be executed) can be undone. After this call, the VM gets ready to execute the step following the invocation of `printl`.

After seeing this code in detail, you'll notice that this code, despite the verbosity of the C++ class declarations and the rich comments, it’s hardly wider than other implementation of multiple item print operations. Also, the overhead in abandoning the main loop in the printNext() method is marginal; we're just required to re-fetch the number of parameters in the current context, and the number of items that we did already write. This, including the call and return operations, is insignificant when compared to a single stream write.

## Pseudo Functions

At this point, it's worth to indicate the fact that it is possible to add PSteps that can be invoked directly as functions. For instance, many languages declare `max(a,b)` and `min(a,b)` functions as operators or use a sort of macro system to expand them into direct sequences of PCODEs. Under the organic VM, it is possible to define new PSteps that will operate at the speed of the raw VM loop. For instance, while `max` is a real C++ function in the engine, it is exposed as a PStep to the VM; in other words, it's called directly, as any expression element. There is practically no semantic or performance difference between a+b or max(a,b), or any other pseudo function that might be added by embedding applications or extension modules (well, `a+b` is a tad slower as classes have the ability to override the `+` operator, but not the pseudo-functions).


# And what about data?

The nature of "code" in the organic virtual machine has been discussed in depth, while we just touched upon the argument of how data is represented. We have seen that functions can be seen as "values", exactly as an integer (in the `fib` sample) and that there are "classes" holding rules on how to the virtual machine -- and all its extensions -- should handle the data they guard (in the `printl` sample). Here we'll just scratch the surface of the problem, as this aspect is as complex as the one we have just dealt with, if not more.

Falcon VM sees data as undifferentiated "items". While it was different before, now the organic VM sees each item as a pair of an opaque data (called user data) and a handler `Falcon::Class`, which the virtual machine uses to interface the opaque data. Other than that, each item has some service flags which can be used by different elements of the engine, and an optional space for a function that should be applied to the item (making it a "method").

## Classes as opaque data handlers

A Class provides support for standard mathematical operators (addition, subtraction, etc.) property or index access, and even data call. In fact, if the data is something that could be "called", as a function, or as an array starting with a function, then the code is loaded in the VM and executed -- the function gets called. In short, it has all that's needed by the engine to handle the opaque data that goes with it.

Actually, at the moment, the VM also allows an item to just store flat data (which can be long 8 bytes at most), and expose an explicit item "type"; some part of the code (i.e. some expressions) use this information to avoid getting the class that should handle the data, and do some operation directly on the spot. However, the "full" mode is always available, and the pair of class-data can be obtained on any item, even the "simplified" ones.

An extender willing to share its data with Falcon must just create a `Falcon::Class` subclass, and share it with the virtual machine (by adding it directly or by adding it to a module that will then be loaded by the virtual machine). The mechanism is so flexible that even "classes" declared by Falcon scripts are handled through this mechanism.

## Classes as data -- the MetaClass handler.

Classes can be treated as normal items. In fact, the following code is legal:

=CODE_START=
// Declare a Falcon Class
class MyClass( value )

   property1 = value
   
   init
      printl( "Entering MyClass..." )
   end
end

// Store the class somewhere...
someClass = MyClass

//... and then create an instance here
instance = someClass( 10000 )
=CODE_END=

What's happening here is that the compiler creates a FalconClass named `MyClass` which stores information about the creation parameters, the properties, and the constructor. Then, the `someclass` item stores an item of type "class"; the class handling it is a `Falcon::MetaClass`. Calling an item of type MetaClass invokes the `Class::op_create` of the handled class (in this case a FalconClass, but it could be any other class exposed by the extenders).

## Merging foreign code seamlessly: HyperClasses

We have already provided an interesting extension called `HyperClass`. A HyperClass is an automatic merge of opaque Class instances, considered as "parents". When all the parents of a class declared by a Falcon scripts through the "class" statement are FalconClass instances (that is, are declared by a script or built as if they were declared by a script), then a new FalconClass is created; but when one or more classes in the hierarchy are something different, then a HyperClass is created.

The HyperClass keeps track of the opaque data that each Class can manipulate, and of the methods and properties that refer to those classes and opaque data. In this way it's possible to transparently derive classes from any number of foreign classes provided by extensions and modules. For instance, in the following example we derive from String, which is a Class exposed by the engine that has the same structure of a foreign class:


=CODE_START=
class Test( vint, vstr ) from String( vstr )
   x = vint
end

inst = Test( 100, "Hello" )
printl( "Property: ", inst.x )  // shall be 100
printl( "Method: ", inst.len() ) // This will be 5
printl( "Entity: ", inst.String ) // "Hello"
// and notice that + is overridden by String
printl( "Operand: ", inst + " world" )
=CODE_END=

## Multiple Object-oriented Programming models

This flexibility now allows hosting of multiple object oriented models in our language. A couple of ready-made Class handlers that implement a full OOP
mode are already available for use at script level: Prototype and Flexy.

The Prototype class is the handler of items storing a variable structure **and** inheritance. They can be dynamically created or compiled via a grammar construct called  p-graph:
=CODE_START=

inst = Prototype()  // a classless prototype...
inst.prop1 = "Hello" // filling properties...
inst.prop2 = "World"
inst.method1 = {a,b,c => printl( "A:", a, "; B:", b, "; C:", c) }

inst = Prototype( cls1, cls2 ) // a prototype with some bases

// Declaring a prototype through a grammar construct
inst = p{
   prop1 = "Hello"
   prop2 = "World"
   _base = [cls1, cls2]
}
=CODE_END=

Notice that cls1 and cls2 in the example may be any instance offering properties; for example, they might be instances of standard classes, or just other prototypes.

The interesting fact about prototypes is that not only can properties be added or removed, but also base entities can, by just manipulating the `_base` array.

A Flexy class is more or less a dictionary of properties and methods which can be added or removed at runtime. The interesting thing about it is that it automatically "absorbs" or "flattens" all the properties offered by a hierarchy of items or classes.

For instance, the following code:

=CODE_START=
p1 = p{
   prop1 = "Hello"   
}

p2 = p{
   prop2 = "World"
}

x = Flexy( p1, p2 )
=CODE_END=

will put the properties held by `p1` and `p2` in `x`. This can be useful to consolidate a deep hierarchy of prototypes, that tend to get growingly inefficient as they get deeper (having more and more bases).


# Conclusion: where are we standing.

The new Falcon 1.0 engine is getting readied for release. We have solved the vast majority of problems bound to the inner engine definition and structure, and we're readying a first sample complete with module loading.

To port some of the constructs of the old engine will require a month or so, but once we have a basic Falcon compiler and binary module serialization in place, it should be relatively fast.

Porting the old modules is not posing any particular problems; we have some bridge code that can interface nearly directly with the old extension API. A bit of hand care is needed to shape up each module, but a few hours per module and a set of search&replace operations should be all that's needed.

However, this sums up to a good deal of time. If the things that I wrote here are interesting for you, we're actively searching volunteers helping out in porting old code to the new engine, and finally get on release 1.0.

If you're interested in helping out, drop a line on #falcon at irc://irc.freenode.net, or [sending a mail to the committee](http://www.falconpl.org/index.ftd?page_id=contacts). If you want to know more about the organic virtual machine internals, [this article](http://www.niccolai.cc/index.php?itemid=431) descends into it with more depth.
