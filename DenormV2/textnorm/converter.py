# -*- coding: utf-8 -*-
"""
Description: Factory functions for making converter for text normalization and
modification
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

from . import check as custom_check
from .w2num.pl2num import to_number
from .extractor import get_longest_match
from .roman import toRoman

def join(convs):
    """Function for joining multiple converters creating one

    :convs: list of converters to be joined
    :returns: callable converter function

    """
    def converter(text, index):
        for conv in convs:
            result = conv(text, index)
            if result is not None:
                return result
        return None
    return converter

def sent_join(convs):
    """@todo: Docstring for sent_join.

    :convs: @todo
    :returns: @todo

    """
    def converter(text):
        for conv in convs:
            text = conv(text)
        return text
    return converter

def dummy(text, index):
    """Dummy converter just returns same token value

    :text: @todo
    :index: @todo
    :returns: @todo

    """
    return [text[index]], 1

def make_junction(text, junction_words, index, total_replace, phrase):
    """Makes juncion of words in the end of phrase

    :text: text to be anylized
    :junction_words: junctionable words, eg. dot '.'
    :index: index in text for inserting phrase
    :total_replace: number of words to replace
    :phrase: phrase to be inserted
    :returns: tuple phrase to be inserted, number of words it will replace in
        target text

    """
    try:
        for jword in junction_words:
            if phrase[-1] == text[index+total_replace] == jword:
                return phrase, total_replace+1
    except IndexError:
        pass
    return phrase, total_replace

def replace(phrases, check, junction_words=None):
    """Factory for function which replaces phrase inside text

    :phrases: dictionary of phrases, key - what to look for, value with which
        value replace it
    :check: callable with check whether replacement should be performed,
        callable gets 3 arguments - text, phrase, index, return True if phrase
        should be replaced and False if not
    :junction_words: list of words which should be joined in to one if there is
        one such word in the end of phrase which should be inserted in text and
        after phrase, when it will be inserted
    :returns: callable converter

    """
    def converter(text, index):
        if check(text, [text[index]], index):
            for phrase, replacement in phrases.items():
                if custom_check.matches_single_phrase(text, phrase, index):
                    if junction_words is None:
                        return replacement, len(phrase)
                    else:
                        return make_junction(text, junction_words, index,
                                             len(phrase), replacement)
        return None
    return converter

def make_word_upper(check):
    """@todo: Docstring for make_word_upper.

    :check: @todo
    :returns: @todo

    """
    def converter(text, index):
        if check(text, [text[index]], index):
            return [text[index].upper()], 1
        return None
    return converter

def insert_punct(phrases, punct, check):
    """@todo: Docstring for insert_punct.

    :punct: @todo
    :check: @todo
    :returns: @todo

    """
    def converter(text, index):
        for phrase in phrases:
            if check(text, phrase, index):
                phrase_len = len(phrase)
                phrase = [punct]
                phrase += text[index:index+len(phrase)]
                return phrase, phrase_len
        return None
    return converter

def convert_to_number(numbers):
    """@todo: Docstring for convert_to_number.

    :numbers: @todo
    :returns: @todo

    """
    number_words = numbers.keys()
    def converter(text, index):
        phrase = get_longest_match(text, number_words, index)
        if phrase:
            return [str(to_number(numbers, phrase))], len(phrase)
        return None
    return converter

def convert_to_roman(check):
    """@todo: Docstring for convert_to_roman.

    :check: @todo
    :returns: @todo

    """
    def converter(text, index):
        if check(text, [text[index]], index):
            try:
                return [toRoman(int(text[index]))], 1
            except ValueError:
                return None
    return converter

def make_date(months):
    """@todo: Docstring for make_date.

    :months: @todo
    :returns: @todo

    """
    month_names = map(lambda x: [x], months)
    before_month = custom_check.before(month_names)
    before_num = custom_check.before_number()

    def converter(text, index):
        if custom_check.is_int_number(text[index]) and before_month(text, [''], index):
            num = int(text[index])
            month = text[index+1].lower()
            if 1 <= num <= 31:
                if before_num(text, ['', ''], index):
                    date = '{}-{}-{}'.format(text[index],
                                            months[month],
                                            text[index+2])
                    return [date], 3
                else:
                    date = '{}-{}'.format(text[index],
                                        months[month])
                    return [date], 2
        return None

    return converter

def capitalize_sent(text):
    """Capitilizes first word of sentence

    :text: tokenized text
    :returns: transformed text

    """
    try:
        text[0] = text[0][:1].upper() + text[0][1:]
        return text
    except IndexError:
        return text

def change_end_punct(puncts, punct, check):
    """Changes end punctuation of sentence if check returns True

    :puncts: list of allowed punctuations
    :punct: punctuation to be inserted
    :check: check function
    :returns: callable converter function

    """
    def converter(text):
        if check(text):
            try:
                if text[-1] in puncts:
                    text[-1] = punct
                else:
                    text.append(punct)
            except IndexError:
                pass
        return text
    return converter

def join_on_initials(sents):
    """Joins sentences if first ends on initials

    :sents: list of sentences
    :returns: list of sentences

    """
    converted = []
    for i, sent in enumerate(sents):
        try:
            prev = converted[-1]
            if custom_check.is_initials([prev[-2:]], None, 0) or custom_check.is_initials([prev[-4:]], None, 0):
                converted[-1] += ' ' + sent
            else:
                converted.append(sent)
        except IndexError:
            converted.append(sent)
    return converted
