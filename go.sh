#!/usr/bin/env bash

pandoc -t beamer -V theme:Warsaw slides/slides.md -o slides/adinapoli.pdf
open slides/adinapoli.pdf
