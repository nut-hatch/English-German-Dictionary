# English-German-Dictionary
Seminar Project at ITMO University St. Petersburg

This program provides a Swadesh dictionary for the translation of English words to German.

# Installation
make install

# Features
1) Vocabulary available for translation

The Swadesh dictionary. A list of available words will be printed when the program is started

2) TUI and GUI

The program can be run in the shell:
  translate_simple
It also includes a TUI or GUI:
  translate_ui
  
3) Client/Server Implementation

Instead of running the translation locally it can be run in a network mode:
  translate_ui --network [$hostname [$port]]
  
4) Localization

The program supports custom localisations, e.g.
  LC_ALL=de_DE translate_ui
  
So far only a german UI is supported

See usage with translate_ui --help
  
