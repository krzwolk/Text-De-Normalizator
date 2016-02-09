# encoding: utf8 
import os

POLISH_UPPER=unicode('AĄBCĆDEĘFGHIJKLŁMNŃOÓPQRSŚTUVWXYZŻŹ', 'utf-8')
POLISH_LOWER=unicode('aąbcćdeęfghijklłmnńoópqrsśtuvwxyzżź', 'utf-8')

upper2lowerMap=dict([(c, (POLISH_LOWER)[i]) for i, c in enumerate(POLISH_UPPER)])

def lower(s):
    return unicode(s, 'utf-8').translate(upper2lowerMap).encode('u8').lower()


def rate(data):
    n1=n2=0
    for line in data.split('\n'):
        l=line.strip().split('\t')
        if l[0]=='period':
            if l[1]!='period': n1+=1
            else: n2+=1
    return int(100.0*n2/(n1+n2))
def gen_crfsuite_input(fname, wfname, crfwfname):
    fw=open('.inter.txt', 'w')
    f=open(fname)
    for line in f:
        line=lower(line)
        words=line.split()
        for i, word in enumerate(words):
            if i==len(words)-1 and word[-1]=='.' and len(word)>1: word=word[:-1]
            fw.write(word+'\n')
        fw.write('\n')
    f.close()
    fw.close()
    f=open('.inter.txt')
    wf=open(wfname, 'w')
    acounter=counter=0
    lastpos=''
    flag=False
    for line in f:
        acounter+=1
        line=line.strip()
        if not line.strip():
            wf.write('\tperiod\n')
            counter+=1
            if counter%30==0: wf.write('\n')
            flag=False
            continue
        elif flag: wf.write('\tnone\n'+line)
        else: wf.write(line)
        flag=True
    wf.write('\n\n')
    f.close()
    wf.close()
    os.remove('.inter.txt')
    print('Average sentence length of %s: %d'%(fname, acounter*1.0/counter))
    print('Making crfsuite input file %s ...'%crfwfname)
    os.system('cat %s | ./chunking.py > %s'%(wfname, crfwfname))

# print('Processing input file ...')    
# gen_crfsuite_input('train.pl', 'train.txt', 'train.crfsuite.txt')
# gen_crfsuite_input('test.pl', 'test.txt', 'test.crfsuite.txt')
# print('Training ...')
# os.system('crfsuite learn -m period.model train.crfsuite.txt')
# print('Testing ...')
# os.system('crfsuite tag -r -m period.model test.crfsuite.txt > .out.txt')
# print('Quality is %s%%'%rate('.out.txt'))
# os.remove('.out.txt')
