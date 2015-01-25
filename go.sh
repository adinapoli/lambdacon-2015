#!/usr/bin/env bash

pandoc -t beamer -V theme:Singapore slides/slides.md -H make-code-scriptsize.tex \
  --highlight-style=espresso -o slides/adinapoli.pdf
open slides/adinapoli.pdf
