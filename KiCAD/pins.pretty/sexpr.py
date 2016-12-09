# Dolf took this from: https://github.com/KiCad/kicad-library-utils/blob/d8e545a7513372d4998e734f964818e1ebcbbfbd/pcb/sexpr.py
# code extracted from: http://rosettacode.org/wiki/S-Expressions

from __future__ import print_function
import re

dbg = False
float_render = "%.3f"

term_regex = r'''(?mx)
    \s*(?:
        (?P<brackl>\()|
        (?P<brackr>\))|
        (?P<num>[+-]?\d+\.\d+(?=[\ \)])|\-?\d+(?=[\ \)]))|
        (?P<sq>"[^"]*")|
        (?P<s>[^(^)\s]+)
       )'''

def parse_sexp(sexp):
    stack = []
    out = []
    if dbg: print("%-6s %-14s %-44s %-s" % tuple("term value out stack".split()))
    for termtypes in re.finditer(term_regex, sexp):
        term, value = [(t,v) for t,v in termtypes.groupdict().items() if v][0]
        if dbg: print("%-7s %-14s %-44r %-r" % (term, value, out, stack))
        if   term == 'brackl':
            stack.append(out)
            out = []
        elif term == 'brackr':
            assert stack, "Trouble with nesting of brackets"
            tmpout, out = out, stack.pop(-1)
            out.append(tmpout)
        elif term == 'num':
            v = float(value)
            if v.is_integer(): v = int(v)
            out.append(v)
        elif term == 'sq':
            out.append(value[1:-1])
        elif term == 's':
            out.append(value)
        else:
            raise NotImplementedError("Error: %r" % (term, value))
    assert not stack, "Trouble with nesting of brackets"
    return out[0]

def build_sexp(exp):
    out = ''
    if type(exp) == type([]):
        out += '(' + ' '.join(build_sexp(x) for x in exp) + ')'
    elif type(exp) == type('') and re.search(r'[\s()]', exp):
        out += '"%s"' % repr(exp)[1:-1].replace('"', '\"')
    elif type(exp) == float:
        out += float_render % exp
    else:
        if exp == '':
            out += '""'
        else:
            out += '%s' % exp
    return out

def format_sexp(sexp, indentation_size=2, max_nesting=2):
    out = ''
    n = 0
    for termtypes in re.finditer(term_regex, sexp):
        indentation = ''
        term, value = [(t,v) for t,v in termtypes.groupdict().items() if v][0]
        if term == 'brackl':
            if out:
                if n <= max_nesting:
                    if out[-1] == ' ': out = out[:-1]
                    indentation = '\n' + (' ' * indentation_size * n)
                else:
                    if out[-1] == ')': out += ' '
            n += 1
        elif term == 'brackr':
            if out and out[-1] == ' ': out = out[:-1]
            n -= 1
        elif term == 'num':
            value += ' '
        elif term == 'sq':
            value += ' '
        elif term == 's':
            value += ' '
        else:
            raise NotImplementedError("Error: %r" % (term, value))

        out += indentation + value

    out += '\n'
    return out
