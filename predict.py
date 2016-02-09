#encoding: utf8
import os
from config import *

def beforeComma(s):
    for w in BEFORE_COMMA: s=s.replace(' %s '%w, ', %s '%w)
    return s
def repeatComma(s):
    for w in REPEAT_COMMA:
        if s.count(' %s '%w)>1:
            s=s.replace(' %s '%w, ', %s '%w)
            s=s.replace(', %s '%w, ' %s '%w, 1)
    return s
def endwithComma(s):
    s=s.strip()
    if s.endswith('.'): s=s[:-1]
    res=[]
    for token in s.split():
        for w in END_WITH_COMMA:
            if token.endswith(w):
                res.extend((',', token))
                break
        else:
            res.append(token)
    s=' '.join(res)+'.\n'
    s=s.replace(' ,', ',')
    return s    
def qSentence(s):
    s=' %s '%(s.strip().strip('.').strip())
    for w in Q_WORDS:
        if s.find(' %s '%w)>-1: return s.strip().strip('.')+'?\n'
        return s.strip()+'.\n'
def capitalNames(s):
    s=s.strip()
    if s.endswith('.'): s=s[:-1]+' .'
    if s.endswith('?'): s=s[:-1]+' ?'
    s=s.replace(', ', ' , ')
    res=[]
    for token in s.split():
        if token in NAMES:
            token=unicode(token, 'utf-8')
            if token[0] in lower2upperMap: res.append((lower2upperMap[token[0]]+token[1:]).encode('u8'))
            else: res.append(token.encode('u8'))
        else: res.append(token)
    return (' '.join(res)).replace(' , ', ', ').replace(' ?', '?').replace(' .', '.')+'\n'

def capitalSentence(s):
    s=unicode(s, 'utf-8')
    if s[0] in lower2upperMap: return (lower2upperMap[s[0]]+s[1:]).encode('u8')
    else: return s.encode('u8')

def convert():
    f=open('.inter.txt')
    fw=open(OUTPUT, 'w')
    for line in f:
        if line=='\n':
            fw.write(line)
            continue
        for func in (beforeComma, repeatComma, endwithComma, qSentence, capitalNames, capitalSentence):
            line=func(line)
        fw.write(line)
    f.close()
    fw.close()
#    os.remove('.inter.txt')
    
def predict():
    f=open(INPUT)
    wf=open('.buf.txt', 'w')
    for line in f:
        wf.write('\n'.join(['%s\tnone'%w for w in line.split()]))
        wf.write('\n\n')
    f.close()
    wf.close()
    os.system('cat .buf.txt | ./train/chunking.py > input.crfsuite.txt')
    os.system('crfsuite tag -r -m period.model input.crfsuite.txt > .out.txt')
    f1=open('.buf.txt')
    f2=open('.out.txt')
    fw=open('.inter.txt', 'w')
    words=[]
    while True:
        s1=f1.readline()
        s2=f2.readline()
        if not s1 or not s2: break
        if s1=='\n': fw.write('\n')
        else:
            words.append(s1.strip().split('\t')[0])
            if s2.strip().split('\t')[1]=='period':
                fw.write(' '.join(words)+'.\n')
                words=[]
    f1.close()
    f2.close()
    fw.close()
#    os.remove('.buf.txt')
#    os.remove('.out.txt')
#    os.remove('input.crfsuite.txt')

if __name__=='__main__':
    if not os.path.exists('period.model'): raise Exception('period.model file not found!')
    predict()
    convert()
