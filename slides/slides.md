---
title: Using Haskell Professionally
author: Alfredo Di Napoli
header-includes:
    - \usepackage{comment}
---

\note{
  Hello everyone, and thanks for coming. We have
  a pretty thight schedule, but I'm trying to leave
  15 mins for Q&A. If you have question during the
  talk though, do not hesitate to interrupt me, as
  we'll take time from the final Q&A section.
}

# Quoting Steve Jobs..

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

# My story

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

When the time of choosing my master degree's project, I had no doubt but asking to my
professor Franco, which at the time was teaching "Parallel and Distributed Computing".
I started working in C++.

------------------

## Fast-forward 2011..

The topic, together with the exposure to C++ revamped in me the holy flame of
fast and compiled languages. So I was determined to find a fast (possibly the
fastest!) functional language, with a strong type system.


------------------

## The Manchester era

\centerline{\includegraphics[width=200px]{images/cake_mill.jpg}}

\note {
Talk about the Manchester period. Don't descend into personal stuff.
}

------------------

## Why Haskell?

- Because software development is a marathon, not a sprint.

------------------

## Why Haskell?

- Because software development is a marathon, not a sprint.
- "It took me more time writing the specs that implementing
  the feature itself"

------------------

## "Pros" of working in Haskell

- Refactoring is a dream
- EDSL are a piece of cake
- High quality libraries

------------------

## EDSL are a piece of cake

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

## Snags of working in Haskell

- Cabal Hell
- ???
- ???

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
