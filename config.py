# encoding: utf8


INPUT='input.pl'
OUTPUT='output.pl'

# If you got a sentence you have to look for words:" a, ale, lecz, jednak, jednakże, zaś, wszakże, owszem, natomiast, tylko, tylko że, dlatego że, mimo że, chyba że, jedynie, przecież, raczej, tymczasem, za to, ponieważ,więc, dlatego, toteż, to, zatem, wobec tego, skutkiem tego, wskutek tego, czyli, to jest, to znaczy, innymi słowy, ach, hej, halo, o, ho, oj", if you have such words you should add a coma sign (,) before such word. For example: Ala ma kota ale woli psy.  -> Ala ma kota, ale woli psy.
# If have a separate letter "i" more than once you put a coma before each one starting from second one. Example: Mam spodnie i koszule i buty i okulary i majtki. -> Mam spodnie i koszule, i buty, i okulary, i majtki.
# If you find a words that end with  -ąc, -wszy, -łszy you add coma before them. Example: Spacerował z psem pogwizdując. -> Spacerował z psem, pogwizdując.
# You change dot at the end of sentence into a question mark when you find in a sentence one of following words: "jak, gdzie, kiedy, kto, co, co robi, jaki, jaka, jakie, który, która, które, czyj, czyja, czyje, ile, który z kolei"

BEFORE_COMMA=["a","ale","lecz","jednak","jednakże","zaś","wszakże","owszem","natomiast","tylko","tylko że","dlatego że","mimo że","chyba że","jedynie","przecież","raczej","tymczasem","za to","ponieważ","więc","dlatego","toteż","to","zatem","wobec tego","skutkiem tego","wskutek tego","czyli","to jest","to znaczy","innymi słowy","ach","hej","halo","o","ho","oj","że"]
REPEAT_COMMA=['i']
END_WITH_COMMA=['ąc', 'wszy', 'łszy']
Q_WORDS=["jak","gdzie","kiedy","kto","co","co robi","jaki","jaka","jakie","który","która","które","czyj","czyja","czyje","ile","który z kolei"]
with open('names.txt') as f: NAMES=f.read().split('\n')

POLISH_UPPER=unicode('AĄBCĆDEĘFGHIJKLŁMNŃOÓPQRSŚTUVWXYZŻŹ', 'utf-8')
POLISH_LOWER=unicode('aąbcćdeęfghijklłmnńoópqrsśtuvwxyzżź', 'utf-8')
lower2upperMap=dict([(c, (POLISH_UPPER)[i]) for i, c in enumerate(POLISH_LOWER)])
