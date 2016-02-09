ASR postprocessing tool
=======================

Examples of commands
--------------------

Show help:

$ python run.py -h

Convert file:

$ python -i in_file -o out_file

Convert file using custom configuration:

$ python -i in_file -o out_file -c conf_file

File Formats
============

abbreviations.txt
abbreviations_near_number.txt
months.txt
symbols.txt

  File consists of phrase pairs separated with ";". As a rule first phrase
  searched in text and replaced with second.

comma_phrases.txt
exclamations.txt
names.txt
names_near_surname.txt
punctuation_marks.txt
questions.txt
salutations.txt
surnames.txt
surnames_near_name.txt

  File consists of list of phrases, one phrase per line

pl_numbers.yaml
pl_ord_numbers.yaml

  Files stored in yaml format. Each line contains name of polish number and
  value in number. Words separated with ":".

Text transformation rules
=========================

 - Makes surnames start from capital letter
 - Makes names start from capital letter
 - Makes salutations start from captial letter
 - Makes initials to be written with capital letters
 - Replaces some phrases with its abbreviations
 - Makes every sentence start from capital letter
 - Adds exclamation mark to exclamation sentences
 - Adds question mark to questions sentences
 - Replaces number in words with number
 - Replaces some number with roman numbers
 - Replaces some words with it symbole (eg. dolar -> $)
 - Adds commas before some of the words

Phrase to number transformation
===============================

Tool uses data from files "pl_numbers.yaml" and "pl_ord_numbers.yaml" in order
to transform phrase to number. If some number was not converted then probably
such word is not stored in one of number files, but can be added, so program
will be able to convert this number on next run, eg:

some_word: 1000
