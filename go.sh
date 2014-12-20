#!/usr/bin/env bash

pandoc -t beamer -V theme:Singapore slides/slides.md -o slides/adinapoli.pdf
open slides/adinapoli.pdf
