About
=====

The program is designed to make de-normalization of ASR resutls in order to enchance machine transaltion. It is adapted to Polish language but can be easily moved for other languages.

Usage
=====
1. Install crfsuite. To download and install visit this: http://www.chokkan.org/software/crfsuite/
2. Add crfsuite binary file path to system path in a way you would be able to run crfsuite in command line in every folder.   sudo ln -s /home/nlp/Desktop/SentenceSplitter/crfsuite-0.12/bin/crfsuite /usr/bin/crfsuite

3. For first run, go to predict/train folder and run
   $python train.py
   Then copy generated period.model to root of period folder beside predict.py


4. Put your input in input.pl and run
   $python predict.py

Final info
====

Feel free to use this tool if you cite:
Wołk A., Wołk K., Marasek K., „Enhancements in Statistical Spoken Language Translation by De-normalization of ASR Results”, Journal of Computers, January 2016 Volume 11 Number 1, ISSN: 1796-203X, p. 33-40, International Academy Publishing, 2016

For more information, see: http://arxiv.org/pdf/1511.09392

For any questions:
| Krzysztof Wolk
| krzysztof@wolk.pl
