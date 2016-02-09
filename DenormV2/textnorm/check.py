# -*- coding: utf-8 -*-
"""
Description: Checks for tokens in text
"""

from __future__ import division
from __future__ import absolute_import
from __future__ import print_function

def all_ok(checks):
    """Function creates check from multiple checks, True returned only if all
    checks returns True

    :checks: list of check functions
    :returns: callable check function

    """
    def make_checks(text, phrase, index):
        for check in checks:
            if not check(text, phrase, index):
                break
        else:
            return True
        return False
    return make_checks

def any_ok(checks):
    """Function creates check from multiple checks, True returned if any of
        checks returns True

    :checks: list of check functions
    :returns: callable check function

    """
    def make_checks(text, phrase, index):
        for check in checks:
            if check(text, phrase, index):
                return True
        return False
    return make_checks

def not_check(check):
    """@todo: Docstring for not_check.

    :check: @todo
    :returns: @todo

    """
    def make_check(text, phrase, index):
        return not check(text, phrase, index)
    return make_check

def sent_all_ok(checks):
    """@todo: Docstring for sent_all_ok.

    :checks: @todo
    :returns: @todo

    """
    def make_checks(text):
        for check in checks:
            if not check(text):
                break
        else:
            return True
        return False
    return make_checks

def sent_any_ok(checks):
    """@todo: Docstring for sent_any_ok.

    :checks: @todo
    :returns: @todo

    """
    def make_checks(text):
        for check in checks:
            if check(text):
                return True
        return False
    return make_checks

def is_number(s):
    """Checks if string is number

    :s: string for checking
    :returns: True or False

    """
    try:
        float(s)
        return True
    except ValueError:
        return False

def is_int_number(s):
    """Checks if string is integer

    :s: string for check
    :returns: True or False

    """
    try:
        int(s)
        return True
    except ValueError:
        return False

def matches_single_phrase(text, phrase, index):
    """Checks whether text at given index matches phrase

    :text: @todo
    :phrase: @todo
    :index: @todo
    :returns: @todo

    """
    try:
        for i, word in enumerate(phrase):
            if text[index+i].lower() != word:
                break
        else:
            return True
    except IndexError:
        pass
    return False

def matches_phrase(phrases):
    """@todo: Docstring for matches_phrase.

    :phrases: @todo
    :returns: @todo

    """
    words = map(lambda x: x[0].lower(), phrases)
    words = set(words)
    def check(text, text_phrase, index):
        if text[index].lower() in words:
            for phrase in phrases:
                if matches_single_phrase(text, phrase, index):
                    return True
        return False
    return check

def matches_word(words):
    """@todo: Docstring for matches_word.

    :words: @todo
    :returns: @todo

    """
    def check(text, text_phrase, index):
        return text[index].lower() in words
    return check

def near_phrase(phrases, position):
    """Factory for function which checks whether some phrase from text is located relative to some phrase from phrases

    :phrases: list of phrases for check
    :position: relative position of phrase
    :returns: callable check function

    """
    def get_val(data, index):
        try:
            return data[index].lower()
        except IndexError:
            return None
    first_words = map(lambda x: x[0].lower(), phrases)
    first_words = set(first_words)
    last_words = map(lambda x: x[-1].lower(), phrases)
    last_words = set(last_words)
    def check(text, text_phrase, index):
        if position >= 0:
            word = get_val(text, index+len(text_phrase)+position-1)
        if position < 0:
            word = get_val(text, index+position)
        if position >= 0 and not(word in first_words):
            return False
        elif position < 0 and not(word in last_words):
            return False
        for phrase in phrases:
            phrase_pos = index + position
            if position > 0:
                phrase_pos += len(text_phrase) - 1
            elif position < 0:
                phrase_pos -= len(phrase) - 1
            if matches_single_phrase(text, phrase, phrase_pos):
                return True
        return False

    return check

def before(phrases):
    """Checks whether phrase is before some text

    :phrases: @todo
    :returns: @todo

    """
    return near_phrase(phrases, 1)

def after(phrases):
    """Checks whether phrase after some text

    :phrases: @todo
    :returns: @todo

    """
    return near_phrase(phrases, -1)

def near_number(position):
    """Factory for function which checks if phrase located near number

    :position: relative position of number to phrase
    :returns: callable check function

    """
    def check(text, phrase, index):
        num_pos = index + position
        if position > 0:
            num_pos += len(phrase) - 1
        try:
            return is_number(text[num_pos])
        except IndexError:
            return False
    return check

def before_number():
    """Checks if phrase located before number
    :returns: callable check function

    """
    return near_number(1)

def after_number():
    """Checks if phrase located after number
    :returns: @todo

    """
    return near_number(-1)

def is_initials(text, phrase, index):
    """Checks if phrase represent initials

    :text: tokenized text
    :phrase: phrase to check (ignored in this check)
    :index: position in text
    :returns: True if check success, False otherwise

    """
    token = text[index]
    try:
        if token[0].isalpha() and token[1]==u'.' and len(token)==2:
            return True
        if (token[0].isalpha() and token[1]==u'.' and
            token[2].isalpha() and token[3]==u'.' and len(token)==4):
            return True
    except IndexError:
        pass
    return False

def sent_equal(puncts, phrases):
    """Factory function for check which checks whether all sentence is equal to
    one of phrases

    :puncts: @todo
    :phrases: @todo
    :returns: @todo

    """
    def converter(text):
        only_text = list(text)
        try:
            while only_text[-1] in puncts:
                only_text = only_text[:-1]
        except IndexError:
            pass
        for phrase in phrases:
            if matches_single_phrase(only_text, phrase, 0):
                return True
        return False

    return converter

def sent_starts_with(phrases):
    """Factory function for checking whether sentence starts with one of phrases

    :phrases: @todo
    :returns: @todo

    """
    def converter(text):
        for phrase in phrases:
            if matches_single_phrase(text, phrase, 0):
                return True
        return False
    return converter
