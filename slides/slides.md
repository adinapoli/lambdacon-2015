---
title: Using Haskell Professionally
author: Alfredo Di Napoli
header-includes:
    - \usepackage{comment}
---

These slides are available at URL.

External links are references are provided at the end.

------------------

# Quoting Steve Jobs..

\note{
  Hello everyone, and thanks for coming. We have
  a pretty thight schedule, but I'm trying to leave
  15 mins for Q&A. If you have question during the
  talk though, do not hesitate to interrupt me, as
  we'll take time from the final Q&A section.
}


Today, I'm gonna tell you three stories.

&nbsp;

\centerline{\includegraphics[width=200px]{images/steve.jpg}}

* My story
* My company story
* Your story

\note{
 So, quoting Steve Jobs, today I'm gonna tell you three
 stories:
 - My story, or how I went to be an hobbyst to a
 professionally employed Haskell programmer in
 less than 2 years, sharing my experience on
 what worked (and what not).
 - The story of Iris Connect, the company I work for,
 telling you why we choose Haskell, the pro (and snags)
 of using it in production and overall show that it's a
 pragmatic programming language which can be used
 to solve real-world problems
 - The final one will be about you, but we'll get to that.
}


------------------

# The early days

Back in 2007, I had my first exposure to FP, under the form of
a university course. The course taught us OCaml.

\note{
My first encounter with FP dates back in 2007, where I attended
a university course, all in OCaml.
Being focused on data structures and algorithm, and not on the
"real world", I did lack the motivation of building things in it.  As
a young undergraduate, I caught the OOP fever shortly after, and
didn't look at OCaml again, despite finding it fascinating.  The fact
my university was (**is**) mono-culture (i.e. Java), together with my
refuse of the _status quo_, pushed me to "greener pastures", where I
found Python, falling in love with it. The desire at the time was
to see what was "out there".
}

------------------

# The early days (contd.)

Back in 2007, I had my first exposure to FP, under the form of
a university course. The course taught us OCaml.

After the initial enthusiasm, I drifted back to Python and
other OOP languages.

------------------

## Fast-forward 2009..

I was still in love with Python. At the time I was a regular
attendees of **Python-it.org**, a popular Italian community.

\note{
The "off-topic" forum room was the place where we talked about
technology and every non-related Python topic, and more than once,
a user I respected mentioned Scheme and its cousin **Clojure**.
Attracted by lisps allure, I decided to give a Clojure a spin.
}

------------------

\begin{center}
I fell in love with Clojure.
\end{center}

------------------

Pushing myself forward in my holy grail search, I was exposed to a huge number of
programming language, trying to find the "perfect" one: Scheme, Clojure, Common Lisp,
**Haskell**, Io, Ruby, _put-yet-another-language-here_.

\note{
I did look at Haskell with interest, but I find it quite arcane.
I did order and started reading the "Real World Haskell" book, but I found it
disappointing (at the time): "Why on earth did I need to wrap my values inside
this _Just_ thing, if then I need to unwrap it to inspect the value?"
- I thought at time.
}

------------------

So, despite the interest, I did went back to Clojure and lisp-family languages.

------------------

## Fast-forward 2011..

I was writing my masters degree dissertation on _Parallel and Distributed Computing_,
using nothing but C++. The topic, together with the exposure to C++ revamped in me
the holy flame of fast and compiled languages.

------------------

## Fast-forward 2011.. (contd.)

I was writing my masters degree dissertation on _Parallel and Distributed Computing_,
using nothing but C++. The topic, together with the exposure to C++ revamped in me
the holy flame of fast and compiled languages.

Being Haskell a compiled language, I wanted to give it another go, so I bought
_Learn You Some Haskell for Great Good_ and worked my way through it.

\note{
Recently LYSH seems to be heavily critiqued, but it was for me the only
reason why I'm an Haskell programmer today. It taught me the beauty of the
language and finally I understood all the things I wasn't able to get with
RWH. It didn't teach me everything, but it was enough to get me going.
}

------------------

## Mid 2012

&nbsp;

\centerline{\includegraphics[width=200px]{images/meteor.jpg}}

&nbsp;

I started an internship with a company in the defense field, doing C++
in Rome. To hone my Haskell skills I tried to contribute to an Haskell
open source project, the [Snap](http://www.snapframework.com)
framework.

\note{
I knew that to get really proficient with a language there is no
better training ground that an open source project. I was lucky
enough to be mentored by Doug Beardsley, one of Snap's lead
engineers.
}

------------------

## Mid 2012

Being determined in earning a living with functional programming, I decided to
concentrates my efforts only on three languages, based on different criteria
(commercial users, personal preference, job offers abroad):

- Haskell
- OCaml
- Scala

\note {
And it was the last one, Scala, my kickstart to the FP job industry.
I sent the CV to a UK company in Manchester called Cake Solutions,
and after the usual interview dance I was on-board! So I resigned
from my internship, bought a one-way ticket to Manchester 2 weeks
from there, and prepared for the biggest leap into the dark of
my entire life.
}

------------------

## The Manchester era

&nbsp;

\centerline{\includegraphics[width=200px]{images/cake_mill.jpg}}

\center {
  \textit{
    Scala programmer during the day, Haskell coder at night.
  }
}

\note {
When in Manchester, I was writing Scala for living but kept
spending my gloomy Mancunians evenings writing Haskell, the
language I wanted to use.
}

------------------

&nbsp;

\centerline{\includegraphics[width=300px]{images/smatters.png}}

&nbsp;

\centerline{\includegraphics[width=200px]{images/wt.png}}

\note {
Talk about the fact I met people from Well Typed, together with
Andres Loh, which later would remember me.
}

------------------

* After a couple of months (it was July 2013) Well Typed was
  hiring. I decided to take pot luck and I applied.
* To maximise my chances, I applied to a couple of other
  positions for Haskell jobs.
* Despite the rejections, **I was actually able to face an
  entire interview doing nothing but Haskell!**

\note {
Say this was an important turning point, where I switched from
an hobbyst to a professional applying for a job.
}

------------------

## August 2013, Vieste - Italy

&nbsp;

\centerline{\includegraphics[width=200px]{images/vieste.jpg}}

\center {
Got rejected by WT, but they said "A client of us might be
searching soon..."
}

------------------

## Landing the tech job I loved

&nbsp;

\centerline{\includegraphics[width=200px]{images/interview.jpg}}

On the 29th of August, I applied for a Haskell job @ Iris Connect.
Took a train to Brigthon, did the interview and was offered
the position. **I was officially an Haskeller!**

------------------

## Takehome lessons


* Don’t be afraid to take leaps into the dark
* Life is about opportunities, seize them
* Try to contribute to a “famous” Haskell OSS
* Constantly sharpen your saw
* Be receptive, do networking

\note{
Don’t be afraid to take leaps into the dark: I turned down a job offer in the safe harbor of my home city for something totally new and scary. If I didn’t do that, today I probably wouldn’t be an Haskell programmer.

Life is about opportunities, seize them: Think about what would have happened if I was too shy to ask Cake Solutions about Skills Matter’s courses. They would have never payed for the course, I would have never met Andres and probably never applied to WT. Duncan would have probably not even considered referring me to Iris.

Try to contribute to a “famous” Haskell OSS: I was able to land this job also because I had experience with web dev in Haskell. But I had experience mostly because I contributed to Snap. There is a substantial difference to say “I have used Snap”, as opposed as “I used Snap and I have implemented feature X”.

Constantly sharpen your saw: If I felt “realised”, today I would still be working in Manchester. The burning desire I had to work as a professional Haskell dev caused me to spend my spare time programming and studying.

Be receptive, do networking: Having a strong network is vital. Try to actively contribute to the community, let other Haskeller know you. Let them think “I have already heard about John Doe”. Even if just an handfull will do, you won’t be a total stranger but someone into the community. I think this is the best thing which can happen to an Haskeller.
}

------------------

## Why Haskell?

&nbsp;

\centerline{\includegraphics[width=200px]{images/marathon.jpg}}

- Because software development is a marathon, not a sprint.

\note{
In my opinion, interpreted languages are great for prototyping,
because you can just express your ideas without worrying too
much about setting a build environment or that the compiler
will reject your program. But I truly believe that if you
want to build a software that will need to last for the next
10 years, that it will need to be scalable and extensible,
that I think a "functional approach" is the only way to
tame complexity.
}

------------------

\center{
  \textit{
  "It took me more time writing the specs that implementing
  the feature itself."
  }
}


\note{
This sentence was told from one of our Ruby programmers during
a standup, and I think it synthesize perfectly the message.
By having a strong type system, Haskell allow us to write the
business logic code AND its tests, without obsessively writing
specs that just emulate what a compiler does for you: caching
silly mistakes. For a business this is a great way to cut the
time to market.
}

------------------

## "Pros" of working in Haskell

- Refactoring is a dream
- EDSLs are a piece of cake
- Makes impossible states unrepresentable
- High quality libraries

------------------

## Refactoring is a dream

\note{
Say is not JUST the type system, is about composition and parametricity.
Lots of small, generic functions. But also that Haskellers like to
decompose everything.
}

------------------

## EDSLs are a piece of cake

``` haskell
fromPreset :: MediaFile -> MediaFile
           -> Maybe Atlas.VideoFilter
           -> VideoPreset -> Maybe VideoRotation
           -> LogLevel -> [T.Text]
fromPreset filename outFilePath flt vpres vi ll =
  let cli = ffmpegCLI $ mconcat [
              i $ toTextIgnore filename
            , loglevel ll
            , fromVideoPreset vpres
            , isVideoRotated vi <?> resetRotateMetadata
            , yuv420p
            , vf [rotateMb vi]
            , isJust flt <?> vf_technicolor
            , o_y_ext (toTextIgnore outFilePath) (Left vpres)
            ]
  in T.words cli
```

------------------

## Makes impossible states unrepresentable

Real world scenario:

``` haskell
-- | Creates a new Supervisor. Maintains a map <ThreadId, ChildSpec>
newSupervisor :: IO Supervisor

-- | Start an async thread to supervise its children
supervise :: Supervisor -> IO ()

-- | forkIO-inspired function
forkSupervised :: Supervisor -> RestartStrategy -> IO () -> IO ThreadId
```

------------------

Example usage:

``` haskell
main = do
  sup <- newSupervisor
  supervise sup
  _ <- forkSupervised sup OneForOne $ threadDelay 1000000 >> print "Done"
```

Can you think to a potential bug?

------------------

**Nothing in the types is forcing us to call `supervise` before actually
supervise some thread!
**

``` haskell
main = do
  sup <- newSupervisor
  -- Wrong! We forgot to start the supervisor...
  _ <- forkSupervised sup OneForOne $ threadDelay 1000000 >> print "Done"
```

As Haskellers, we can certainly do better!

------------------

## GADTs to the rescue!

GADTs (Generalised Algebraic Data Types) allow us to constrain the
type in the polimorphic type variable (`a` in the example).

``` haskell
-- Two inhabitated types (no constructors)
data Uninitialised
data Initialised

data Supervisor_ a where
     NewSupervisor :: {
      -- record fields (omitted)
      } -> Supervisor_ Uninitialised
     Supervisor :: {
      -- record fields (omitted)
      } -> Supervisor_ Initialised

-- Client-friendly type synonyms

type SupervisorSpec = Supervisor_ Uninitialised
type Supervisor = Supervisor_ Initialised
```

------------------

Let's now slightly change our API to be this:
snippet again...

``` haskell
-- | Creates a new Supervisor. Maintains a map <ThreadId, ChildSpec>
newSupervisor :: IO SupervisorSpec

-- | Start an async thread to supervise its children
supervise :: SupervisorSpec -> IO Supervisor
```

------------------

What did we get? Let's try to run the "wrong"
snippet again...

``` haskell
main = do
  sup <- newSupervisor
  _ <- forkSupervised sup OneForOne $ threadDelay 1000000 >> print "Done"
```

GHC will complain:

``` haskell
Couldn't match type ‘Control.Concurrent.Supervisor.Uninitialised’
         with ‘Control.Concurrent.Supervisor.Initialised’
Expected type: Supervisor
Actual type: Control.Concurrent.Supervisor.SupervisorSpec
```

------------------

* This is because now we require a `Supervisor` to be initialised first
* The type system prevented us making a silly mistake
    - Failed with a very useful error message
* Profit!

This is just a small example (this is only one of the possible solutions),
but the benefits are real.

\note{
Funny fact: after this change, I spotted a bug in one of my tests!
}

------------------

## Snags of working in Haskell

- Slow(ish) Compilation
- Cabal Hell
- ???

------------------

## Slow(ish) compilation

&nbsp;

\centerline{\includegraphics[width=200px]{images/compiling.png}}

------------------

## Slow compilation: the caveat

- It's a problem all non-interpreted languages have to deal with
- GHC indeed does incremental compilation, building only what's changed
- It's even slower if..
    * You have TH (Template Haskell) in your code
    * You are building with profiling enabled

\center{
  \textbf {
  If you want faster feedback loop, consider using ghci
  }
}


------------------

## The typical Sinatra hello world app...

``` ruby
require 'sinatra'

get '/hi' do
  "Hello World!"
  end
```

------------------

## ...and the Snap equivalent

``` haskell
{-# LANGUAGE OverloadedStrings #-}

import Snap

main :: IO ()
main = quickHttpServe $ do
  route [("/hi", method GET $ writeBS "Hello World!")]
```

------------------

# In a nutshell...

\begin{center}
Haskell is a very pragmatic language...
\end{center}

\note{
}

------------------

# In a nutshell...

\begin{center}
Haskell is a very pragmatic language...

...but not all the people using it are!
\end{center}

\note{
}

------------------

# Your story

\begin{center}
What can \textbf{you} do (as a community) to embrace, support and
spread functional programming?
\end{center}

\note{
So here it comes the last story. The main character of this
story is all of us, intended both as a community and as an
individual. What follows are my personal suggestions, so
yuor mileage might vary
}

------------------

\begin{center}
Be pragmatic.
\end{center}

\note{
    - Be pragmatic: Always remember CUFP's slogan:
    " Functional Programming as a means, not an end." We are
    programmers, and as such, our main focus should be
    building things. As long as we write reliable and robust
    code, we are free to use whatever we like. Part of our
    profession is to build things for ourselves, the other
    is to craft things for others to use. To our customers,
    the fact our software is written with a functional
    language doesn't matter. If it's buggy and/or betrays
    stakeholders expectations, it's just using FP as an end.
    But if our software is correct, reliable, easier to
    maintain and delivered in half of the time, we are using
    FP as a means to deliver better software.
    But in order to do that we need to embrace the unknown.
}

------------------

\begin{center}
Keep an open mind.
\end{center}

\note{
    - Be open minded means bla bla
}

------------------

\begin{center}
Reject the status-quo.
\end{center}

\note{
    - Reject the status quo bla bla
}

------------------

## Quoting Bret Victor's "The future of programming"

[..]So the most dangerous thought that you can have as a creative person
is to think that you know what you're doing. Because once you think you know
what you're doing, you stop looking around for other ways of doing things. And
**you stop being able to see other ways** of doing things.[..]

------------------

[..] if you don't want to be this guy, if you want to be open or receptive to
new ways of thinking, to invent new ways of thinking, I think the first step
is you have to say to yourself, **"I don't know what I'm doing.** [..]
I think you have to say, "we don't know what programming is. We don't know
what computing is. We don't even know what a computer is."

------------------

\begin{center}
\textbf{And once you truly understand that - and once you truly believe that - then you're free.}
\end{center}

------------------

\begin{center}
Thank you.
\end{center}

------------------

\begin{center}
Questions?
\end{center}

------------------

## External references

* My road to Haskell
  http://www.alfredodinapoli.com/posts/2014-04-27-my-road-to-haskell.html
* Don Stewart - Haskell in the large
  http://code.haskell.org/~dons/talks/dons-google-2015-01-27.pdf
* Bret Victor - The Future of Programming
  http://vimeo.com/71278954
