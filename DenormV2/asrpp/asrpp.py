# -*- coding: utf-8 -*-
"""
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

import nltk
from textnorm import processing, converter, check, tokensprocess

def converter_factory(conf):
    """@todo: Docstring for converter_factory.

    :conf: @todo
    :returns: @todo

    """
    def text_converter(text):
        text = text.strip()
        sents = tokenizer.tokenize(text)
        sents = converter.join_on_initials(sents)
        processed = []
        for sentence in sents:
            tokens = nltk.word_tokenize(sentence)
            tokens = convert_numbers(tokens)
            tokens = convert_tokens(tokens)
            tokens = convert_roman(tokens)
            result = convert_sents(tokens)
            processed.append(tokensprocess.join(conf.punctuation_marks, result))
        return processed
    convert_numbers = convert_numbers_factory(conf)
    convert_roman = convert_roman_numbers_factory(conf)
    convert_tokens = convert_tokens_factory(conf)
    convert_sents = convert_sents_factory(conf)
    tokenizer = nltk.data.load(conf.text_tokenizer)
    return text_converter

def convert_numbers_factory(conf):
    """@todo: Docstring for convert_numbers_factory.

    :conf: @todo
    :returns: @todo

    """
    def convert_tokens(tokens):
        tokens = processing.process_text(tokens, convert_numbers)
        return tokens
    numbers = conf.numbers.copy()
    numbers.update(conf.ord_numbers)
    convert_numbers = converter.convert_to_number(numbers)
    return convert_tokens

def convert_roman_numbers_factory(conf):
    """@todo: Docstring for convert_roman_numbers_factory.

    :conf: @todo
    :returns: @todo

    """
    def convert_tokens(tokens):
        tokens = processing.process_text(tokens, convert_numbers)
        return tokens
    # Convert roman numbers
    wiek = [[u'w.'], [u'w', u'.']]
    near_check = check.any_ok([check.after(wiek), check.before(wiek)])
    convert_numbers = converter.convert_to_roman(near_check)
    return convert_tokens

def convert_tokens_factory(conf):
    """@todo: Docstring for convert_tokens.

    :tokens: @todo
    :conf: @todo
    :returns: @todo

    """
    def convert_tokens(tokens):
        return processing.process_text(tokens, conv)

    convs = []

    # Capitalize surnames
    convs.append(converter.replace(conf.surnames, check.matches_phrase(conf.surnames)))
    near_phrase = dict(conf.names.items() +
                       conf.names_near_surname.items() +
                       conf.salutations.items())
    near_pcheck = check.all_ok([check.matches_phrase(conf.surnames_near_name),
                                check.any_ok([check.after(near_phrase),
                                              check.before(near_phrase)])])
    convs.append(converter.replace(conf.surnames_near_name, near_pcheck))

    # Capitalize names
    convs.append(converter.replace(conf.names, check.matches_phrase(conf.names)))
    near_phrase = dict(conf.surnames.items() +
                       conf.surnames_near_name.items() +
                       conf.salutations.items())
    near_pcheck = check.all_ok([check.matches_phrase(near_phrase),
                                check.any_ok([check.after(near_phrase),
                                              check.before(near_phrase)])])
    convs.append(converter.replace(conf.names_near_surname, near_pcheck))

    # Capitalize salutations
    convs.append(converter.replace(conf.salutations, check.matches_phrase(conf.salutations)))

    # Abbreviate
    convs.append(converter.replace(conf.abbreviations, check.matches_phrase(conf.abbreviations),
                                   junction_words=[u'.']))
    near_number = check.all_ok([check.matches_phrase(conf.abbreviations_near_number),
                                check.any_ok([check.after_number(),
                                              check.before_number()])])
    convs.append(converter.replace(conf.abbreviations_near_number, near_number,
                                   junction_words=[u'.']))

    # Insert symbols
    after_number = check.all_ok([check.matches_phrase(conf.symbols), check.after_number()])
    convs.append(converter.replace(conf.symbols, after_number))

    # Capitalise initilas
    near_surname = check.all_ok([check.is_initials,
                                 check.any_ok([check.after(conf.surnames),
                                               check.before(conf.surnames)])])
    convs.append(converter.make_word_upper(near_surname))

    # Insert commas before some words
    check_comma = check.all_ok([check.matches_phrase(conf.comma_phrases),
                                check.not_check(check.after([[u',']]))])
    convs.append(converter.insert_punct(conf.comma_phrases, u',', check_comma))

    # Convert dates
    convs.append(converter.make_date(conf.months))

    conv = converter.join(convs)
    return convert_tokens

def convert_sents_factory(conf):
    """@todo: Docstring for convert_sents_factory.

    :conf: @todo
    :returns: @todo

    """
    def convert_sents(sent):
        return conv(sent)

    convs = []

    # Capitalize sentence
    convs.append(converter.capitalize_sent)

    # Exclamation mark after exclamation
    convs.append(converter.change_end_punct(conf.punctuation_marks, u'!',
                                            check.sent_equal(conf.punctuation_marks,
                                                             conf.exclamations)))

    # Question mark if question
    convs.append(converter.change_end_punct(conf.punctuation_marks, u'?',
                                            check.sent_starts_with(conf.questions)))

    conv = converter.sent_join(convs)

    return convert_sents
