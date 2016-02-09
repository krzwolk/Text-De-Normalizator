Średnio trwało to trochę ponad 50, a maksymalnie zajmowało to ponad 60 godzin.
Tak, ale w różnych dniach czas potrzebny na wykonanie instancji procesu pracy był różny.
Wynikało to z obciążenia pracowników, z tego ile pracy zaległej trzeba było wykonać w kolejnych dniach.
Wynikało to również z przychodzących w weekendy zamówień, które nie były obsługiwane przed poniedziałkiem.
Możemy zobaczyć również jak wyglądały w ramach całego procesu biznesowego minimalny, średni i maksymalny czas wykonania instancji naszego procesu.
Trzeba wziąć pod uwagę weekendy i inne tego typu elementy.
Następnie widzimy, ile poszczególne instancje tego procesu pracy czekały na rozpoczęcie.
Z różnych przyczyn, między innymi ze względu na to, że pierwsza aktywność nie wymagała użycia żadnych zasobów, ale możemy w wielu innych procesach spodziewać się nieco innych wartości.
Następnie widzimy, ile łącznie zajęły wszystkie instancje naszego procesu pracy i widzimy raporty na temat poszczególnych aktywności.
Obok numeru i nazwiska pracownika wypisz nazwę działu w którym ten pracownik pracuje.
Uwzględnij też tych pracowników, którzy nie pracują w żadnym dziale. Sposób pierwszy: po stronie uboższej umieszczamy gwiazdkę.
Jest to konstrukcja Oracle select.
Tu umieszczamy w nawiasach znak plus.
Sposób drugi: w celu zaprezentowania wyniku innego niż przy dopisałam do tabeli emp pracowników nie zatrudnionych w żadnym dziale.
Wynikiem tego zapytania są te dane, które otrzymaliśmy w wyniku inner join oraz dwa wiersze pracowników Kowalskiego i Nowaka, w których przy nazwie działu mamy null.
Obok numeru i nazwiska pracownika wypisz nazwę działu w którym ten pracownik pracuje.
Uwzględnij też te działy w których nikt nie pracuje.
Po stronie uboższej umieszczamy gwiazdkę.
Tutaj w nawiasach gwiazdka równa się w tym przypadku, stroną uboższą jest empt debt.
No to znaczy, puste dane będą po stronie pracownika.
W wyniku otrzymujemy te dane, które dostaliśmy w wyniku złączenia zewnętrznego oraz dział operations, w którym nie pracuje żaden pracownik.
Oczywiście od strony pracownika dostajemy puste dane.
I przykład zastosowania full outer join.
Obok numeru i nazwiska pracownika wypisz nazwę działu w którym ten pracownik pracuje.
Uwzględnij też tych pracowników, którzy nie pracują w żadnym dziale oraz te działy, w których nikt nie pracuje.
Jako sposób pierwszy zdecydowałam się przedstawić sposób standardowy z wykorzystaniem.
Ponieważ nie możemy napisać znaku plusa w nawiasach po obu stronach, jedynym sposobem realizacji tego zadania w warunku where, jest zastosowanie operatora union.
Wynik jest następujący: wszystkie te wiersze, które otrzymaliśmy w wyniku inner join plus dwa wiersze tych pracowników, którzy nie pracują w żadnym dziale.
Czyli od strony działu jest null oraz wiersz dla działu, w którym nikt nie pracuje, gdzie od strony pracownika jest null.
Jak wiemy, w modelu relacyjnym mogą występować powiązania rekurencyjne.
W naszym modelu w tabeli emp mamy pole mgr, które jest odwołaniem do pola emp.
No w tej samej tabeli, korzystając ze związku klucz obcy klucz obcy, można dokonać złączenia tabeli.
Wówczas ta sama tabela występuje w dwóch lub więcej rolach.
Role te wskazywane są przez aliasy dołączane do nazwy tabeli w klauzuli from, co widzieliśmy na jednym z wcześniejszych jako przykład.
Wykonajmy następujące zadanie: obok nazwiska pracownika wypisz nazwisko jego kierownika.
Odpowiedzią tu będzie następujące.
Alias prac reprezentuje tu wiersz pracownika, a alias kier wiersz jego kierownika.
W tym przypadku aliasy tabel są konieczne, ponieważ używamy tej samej tabeli raz w roli pracownika, raz w roli kierownika.
W wyniku otrzymujemy listę pracowników wraz z nazwiskami ich kierowników, przy czym oczywiście, jeżeli jakiś pracownik nie ma kierownika, wówczas na tej liście nie pojawia się, ponieważ użyliśmy złączenia.
Przedstawione powyżej zapytanie jest bardzo intuicyjne.
Wyobraźmy sobie, że chcielibyśmy na podstawie danych z tabeli emp sami ustalić, kto jest kierownikiem danego pracownika.
Spojrzelibyśmy wówczas na tabelę emp.
Najpierw w roli pracownika wybralibyśmy pracownika, spojrzelibyśmy w pole mgr, sprawdzilibyśmy jaki jest tam numer w wierszu danego pracownika.
Następnie wzięlibyśmy tą samą tabelę emp w roli kierownika i przeszukalibyśmy pole emp.
No w polu emp, no znaleźlibyśmy ten numer i zobaczyli nazwisko pracownika, którego jest to numer.
Zrobiliśmy dokładnie to, co jest napisane w zapytaniu.
Po pierwsze, tabelę emp użyliśmy w dwóch rolach: w roli pracownika i w roli kierownika.
Po drugie, ustaliliśmy, że wartość w polu mgr u pracownika jest taka sama, jak wartość w polu emp no u kierownika, czyli jest to dokładnie warunek.
Samo zadanie możemy oczywiście zrealizować używając.
Wynik jest oczywiście taki sam, bo jest to równoważne zapytanie.
Tego zapytania nie da się zrealizować stosując using ani natural join, ponieważ nie pozwalają one na kwalifikowanie nazw kolumn nazwami tabel.
W takim przypadku takie kwalifikowanie jest konieczne, ponieważ używamy dwa razy tej samej tabeli w dwóch różnych rolach.
Możemy też oczywiście rozszerzyć nasz wynik o pracowników, którzy szefa nie posiadają.
Widzieliśmy, że w naszej tabeli jest pracownik king, który nie posiada szefa.
Nie wyszedł on w wyniku naszego poprzedniego zapytania, ponieważ było to złączenie wewnętrzne.
Teraz napiszemy takie zapytanie, które pokaże wszystkich pracowników.
Zarówno tych, którzy posiadają szefa, jak i tych którzy nie posiadają szefa, a jednocześnie obok nazwiska pracownika, który posiada szefa będzie nazwisko jego szefa.
Sposób pierwszy: tutaj plus w nawiasach, bądź sposób drugi: wynik jaki dostaliśmy jest zgodny z naszymi oczekiwaniami.
Do listy pracowników posiadających szefa dołączył king, który szefa nie posiada.
Na koniec tej części omówimy jeszcze inny rodzaj złączenia.
Nie każde złączenie jest złączeniem postaci: klucz obcy klucz główny.
Jeśli na przykład chcemy obok nazwiska pracownika podać jego klasę zarobkową, musimy złączyć tabelę emp z tabelą salgrate.
W wyniku otrzymujemy listę pracowników.
Obok nazwiska każdego pracownika jest wypisana jego klasa zarobkowa.
Zakładamy oczywiście, że pary wartości pokrywają cały dopuszczalny zakres zarobków pracowników, a więc dla każdej wartości zarobków jest określona dokładnie jedna taka para obejmująca tą wartość sale.
Powyższe zapytanie również jest zapytaniem bardzo intuicyjnym.
To samo zapytanie możemy zrealizować używając konstrukcji inner join.
Na tym zakończymy część pierwszą, czyli omawianie operatorów algebraicznych zwanych też złączeniami pionowymi oraz złączeń zwanych też złączeniami poziomymi.
Proszę sprawdzić, czy ta metoda doprowadzi do optymalnego rozwiązania.
Proszę również pamiętać, że czasem taka metoda może dać najlepsze rozwiązanie.
Czasem taka metoda nie prowadzi do najlepszego rozwiązania.
Prawda to jest true, fałsz to jest false.
W momencie, kiedy skończyliśmy definiować naszą zmienną możemy kliknąć finisz lub też finisz end add po to, żeby dodać następną zmienną.
Po skończeniu definiowania tej, oszczędza nam to jednego kliknięcia.
Możemy też kliknąć cancel, jeśli chcemy zrezygnować ze stworzenia tej zmiennej.
Kliknijmy finish end add i dodajmy jeszcze jedną zmienną.
Powiedzmy, że na przykład mamy wybrać kolor czegoś, samochodu, kartki świątecznej czy innego podobnego elementu.
Tu proszę zwrócić uwagę.
System będzie nam komunikował, jeśli nasza nazwa będzie zawierała niedozwolone znaki, takie jak na przykład spację.
Jest taka głębia - z tyłu widzimy skały trawę.
Tło, plan drugi, środkowy, to to jest plan z tą kozicą, natomiast najbliżej nas jest jakaś trawa, jakieś zarośla, które są nawet troszeczkę nieostre.
Tutaj dodatkowe wrażenie głębi.
Może to być jakiś przycisk, jakaś strona internetowa, jakiś obiekt trzy d, tak więc niekoniecznie się to tylko ogranicza do statycznych grafik.
Stwórzmy nowy projekt, którym będziemy zarządzać.
W tym celu klikamy na menu pozycję.
Menu projects zabierze nas to do strony zawierającej listę wszystkich projektów, które mamy zdefiniowane w systemie.
W tej chwili lista jest pusta.
Kliknijmy więc na new project i zostaniemy zabrani do formularza w którym możemy zdefiniować podstawowe własności naszego projektu.
Podajemy jego nazwę, możemy podać opis tego projektu.
Na przykład ten projekt jest tworzony w ramach kursu elearningowego.
Możemy określić sobie również stronę domową naszego projektu, jeśli taką mamy.
Podajemy w takim wypadku jej adres.
Możemy określić, czy nasz projekt jest publiczny, widoczny dla wszystkich czy nie.
Możemy również określić listę modułów, jakie chcemy wykorzystać.
Czy na przykład potrzebujemy moduł do zarządzania plikami, czy potrzebujemy kalendarz albo chociażby Wikipedię.
Możemy teraz stworzyć projekt albo kliknąć create and continue, żeby kontynuować tworzenie projektów.
Tak, zabierze nas to do tego samego dialogu.
Będziemy mogli zdefiniować nowy.
Po powróceniu do menu project zobaczymy nasz pierwszy projekt zdefiniowany.
Możemy na niego kliknąć, aby zostać zabranym do strony naszego projektu.
Cała strona jest podzielona na kilka zakładek.
Zakładka overview zawiera podstawowe informacje na temat projektu.
W tej chwili jest stosunkowo pusta, mamy tylko i wyłącznie informację o tym że w naszym projekcie nie są zdefiniowane jeszcze żadne zadania.
Zakładka activity pozwoli nam na obejrzenie wszystkich zdarzeń w projekcie posortowanych według kolejności.
Issues pozwoli nam na obejrzenie wszystkich zadań, które są zdefiniowane w naszym projekcie.
W tej chwili nie mamy żadnych zadań, możemy jednak zdefiniować nowe korzystając z zakładki new issue.
New issue pozwoli nam na określenie, po pierwsze jakiego typu jest to zadanie.
Zadanie może być typu bug, czyli błąd kreatur, czyli prośba o nową funkcjonalność systemu albo suport, czyli prośba o wsparcie techniczne.
Stwórzmy funkcjonalność typu kreatur, znaczy zadanie typu kreatur i prośbę o wprowadzenie nowej funkcjonalności do systemu.
Teraz powinniśmy podać nazwę tej funkcjonalności.
To może być na przykład założenie strony www sklepu.
Powinniśmy podać też opis tej funkcjonalności.
Zwykle ten opis będzie dość długi.
Powinien zawierać wystarczające informacje dla programistów i projektantów, którzy będą tworzyć tą funkcjonalność.
Możemy też określić status naszego zadania.
Może być to zadanie na przykład nowe, ale może być to też zadanie, które jest już w trakcie.
Może być to zadanie które jest już zamknięte.
Priorytet tego zadania, czy jest to zadanie o wysokim, niskim priorytecie czy też powinno być zrealizowane natychmiast.
Możemy podać osobę, która będzie przydzielona do realizacji tego zadania.
Będzie to jedna z osób, które są przydzielone do naszego projektu.
Możemy określić jakie zadanie jest rodzicem tego zadania, tak czyli możemy podzielić zadania na mniejsze.
Możemy podać daty początek i koniec realizacji danego zadania, na przykład chcieć to zadanie zrealizować do pierwszego września.
Szacowany czas, który będzie potrzebny na jego realizację: na przykład 20 roboczogodzin.
Możemy też dołączyć do tego jakieś dodatkowe pliki, na przykład projekt graficzny i powiedzieć, jakie osoby będą obserwowały to zadanie.
Na koniec klikamy creator i widzimy stronę z podsumowaniem naszego zadania.
Zawiera ona wszystkie istotne informacje, które wprowadziliśmy.
Możemy przejść teraz do zakładki Gannt, która zawiera diagram Gannta wygenerowany automatycznie na podstawie listy stworzonych przez nas zadań.
Tak jak widzimy, na razie stworzyliśmy jedno zadanie: założenie strony www sklepu i trwa ono od dzisiaj do pierwszego września.
Widzimy tutaj na przykład pierwszego września koniec realizacji zadania pierwszego, a osiemnastego sierpnia początek jego realizacji.
Zakładka news pozwala nam na publikację oraz oglądanie wiadomości w naszym projekcie.
Możemy podać tytuł wiadomości, jej podsumowanie oraz pełną treść.
Możemy też ewentualnie powiązać z tą wiadomością pliki przy pomocy choose files.
Wszystkie takie wiadomości będą dostępne dla wszystkich członków projektu.
W zakładce documents możemy publikować oraz przeglądać opublikowane dokumenty.
Zwykle będzie to dokumentacja techniczna i dokumentacja projektowa, która została stworzona w ramach naszego projektu.
Następnie możemy przejść do zakładki wiki, która pozwala nam na edycję projektowej Wikipedii.
Bardzo przydatna funkcjonalność.
W wielu wypadkach zakładka files pozwala nam z kolei na umieszczanie w systemie wszelkich innych plików nie będących dokumentami.
Mogą być to na przykład pliki graficzne, czy nawet kody źródłowe.
Wreszcie settings pozwala nam na ustawienie różnych własności naszego projektu, na przykład wykorzystywanych modułów, osób które są do tego projektu przypisane, czy też na przykład w wersji systemu.
W tej chwili jak widać nie mamy jeszcze żadnych członków naszego projektu, nie mamy też żadnych wersji systemu.
Możemy podać opis takiej wersji.
Każda z niej, każda wersja może mieć powiązaną ze sobą na przykład własną stronę wiki.
Możemy definiować nowe typy zadań.
Dla takich nowych typów zadań musimy określić nazwę oraz przy menu wyboru możemy określić osoby, które będą automatycznie przypisywane do tych zadań spośród członków naszego projektu.
W zakładce wiki możemy tutaj określić po prostu stronę startową naszej Wikipedii.
W repositories możemy tworzyć nowe repozytoria na dokumenty.
W forums możemy tworzyć nowe fora projektowe, a w activites możemy określić jakie typy działań w projekcie mogą być podejmowane domyślnie.
Są stworzone dwa typy działań: design czyli projektowanie i development czyli programowanie.
Zobaczmy dwa przykłady wykorzystania kwantyfikatorów all oraz some, czyli any.
Pierwsze to wykorzystanie kwantyfikatora all: wybierz nazwiska i zarobki pracowników, którzy zarabiają więcej od każdego pracownika z działu trzydziestego.
Odpowiedź oczywiście możemy zastąpić all wpisując sale większe od select max.
Odpowiedź moglibyśmy użyć konstrukcji sale większe niż select od min sale, natomiast możemy w tym kontekście użyć kwantyfikatora any.
Przejdźmy teraz do kolejnego rodzaju podzapytań, czyli do tak zwanych podzapytań skorelowanych.
Konstrukcja zapytania z podzapytaniem może uzależniać zbiór wyników podzapytania od wartości występujących w wierszach głównego zapytania.
Jeśli tak się dzieje, podzapytanie nazywamy podzapytaniem skorelowanym.
Maksymalne zarobki w danym dziale są równe.
Całe zapytanie wygląda następująco.
W odpowiedzi widzimy działy i nazwiska oraz pensje tych osób, które w tych działach zarabiają najwięcej.
Podzapytanie skorelowane wykonywane jest następująco: dla każdego wiersza z zapytania głównego sprawdzany jest warunek występujący w podzapytaniu.
Zobaczmy dane w tabeli emp.
Spójrzmy na wiersz dotyczący pierwszego z pracowników, czyli pracownika king.
Sprawdzana jest pensja pracownika king.
Wynosi ona pięć tysięcy.
Następnie wykonywane jest podzapytanie dla tego wiersza i w podzapytaniu sprawdza się, czy ta pensja pięć tysięcy jest maksymalną pensją w dziale w którym pracuje nasz king.
King pracuje w dziale dziesiątym.
Pensja pięć tysięcy jest pensją maksymalna dla działu dziesiątego, a więc wiersz z danymi pracownika king przechodzi do wyników naszego zapytania.
Brany jest kolejny wiersz z tabeli emp: dane dotyczące pracownika blake.
Sprawdzana jest pensja pracownika Blake: dwa osiemset pięćdziesiąt.
Następnie w podzapytaniu jest sprawdzane, czy pensja Blake jest maksymalna dla działu w którym pracuje Blake.
Blake pracuje w dziale trzydziestym.
Pensja dwa osiemset pięćdziesiąt jest maksymalna dla działu trzydziestego.
Dane Blake przechodzą do wyników zapytania.
Pensja Clarka nie jest maksymalna w dziale dziesiątym.
Maksymalna pensja jest pięć tysięcy, w związku z tym Clark jest odrzucany i tak dalej i tak dalej.
Omawiając podzapytania skorelowane nie można nie wspomnieć o predykatach exists i not exists w celu sprawdzenia, czy podzapytanie zwraca pusty zbiór wyników, czy też nie.
Używane są predykaty exist, not exists.
Na przykład, czyli mamy tutaj zapisane istnieje co najmniej jeden pracownik zatrudniony w dziale o numerze dziesięć.
Dla wyniku nie jest istotne co napiszemy na liście select w ramach predykatu exists.
Właściwie istotne jest tylko to, czy podzapytanie zwraca coś czy nic.
W związku z tym, skoro najprostsza obliczeniowo jest wartość stała, taka jak literał x bądź jeden, piszemy wartość stałą.
Przykład zastosowania predykatu: wypisz działy w których aktualnie nie ma zatrudnionych pracowników.
Za pomocą predykatu not exists można rozwiązać problem wyznaczania wszystkich pracowników, którzy nie są kierownikami, czyli ten problem który mieliśmy przy stosowaniu predykatu not in z wartością null.
W przypadku stosowania predykatu not exist znika.
Mamy takie zapytanie.
Oczywiście te aliasy tabel możemy wybrać dowolne mniej lub bardziej znaczące.
Moglibyśmy w tym przypadku zastosować prac i kier.
Wynik jaki dostajemy, to oczywiście lista pracowników którzy nie są kierownikami, czyli ich numer emp no nie istnieje u nikogo w polu mgr.
Początkowo podzapytań można było używać tylko w klauzulach where i having, w tej chwili podzapytań można również użyć w klauzuli from, jak również select.
Zobaczmy jak wygląda używanie podzapytań w klauzuli from.
Wynik działania instrukcji select ma postać tabeli, zatem możemy w klauzuli from zamiast podawania normalnej nazwy tabeli podać instrukcje select.
Taką konstrukcję zapytania można porównać do utworzenia nowego widoku.
Można powiedzieć, takiej wirtualnej perspektywy i traktowania go jako źródło rekordów dla instrukcji select.
W Oracle przed definicją aliasu tak tworzonej wirtualnej perspektywy nie może pojawić się słowo kluczowe s.
Przykład: policz procentowy udział działów w liczbie pracowników.
Zapytanie które moglibyśmy tu napisać jest następujące.
To zapytanie zwraca procentowy udział działów w liczbie pracowników.
Jak zostało skonstruowane to zapytanie.
W klauzuli from mieliśmy dwa podzapytania.
W pierwszym podzapytaniu obliczyliśmy liczbę pracowników w każdym z działów z osobna.
W drugim podzapytaniu obliczyliśmy ilu pracowników pracuje w firmie ogółem.
Następnie w zapytaniu głównym podaliśmy numer działu oraz liczbę pracowników w rozbiciu na dział, podzieliliśmy przez liczbę pracowników ogółem razy sto, oczywiście po to, żeby podać wynik w procentach.
I na koniec przykład podzapytania w klauzuli select.
Powiedzmy, że dla każdego działu chcemy powiedzieć ile pracowników pracuje w tym dziale.
To zadanie oczywiście możemy zrealizować na wiele sposobów, jednym z nich jest użycie podzapytania w klauzuli select.
Select otrzymujemy oczywiście liczbę pracowników w każdym dziale.
Mamy tutaj wypisane nazwy działu, numer działu oraz liczbę pracowników.
Widzimy, że został też uwzględniony dział, w którym nikt nie pracuje i liczba pracowników wynosi zero.
Jest to oczywiście podzapytanie skorelowane.
Na tym kończę opowiadanie o podzapytaniach w języku SQL, a także jest to również koniec całego wykładu.
Dzień dobry państwu.
W drugim wykładzie zaprezentuję państwu złożone zapytania.
Plan wykładu jest następujący: część pierwszą zaczynam od omawiania operatorów algebraicznych, a następnie przechodzę do omawiania konstrukcji złączenia tabel.
W części drugiej omawiam zapytania sumaryczne oraz klauzule group by i having.
W części trzeciej omawiam podzapytania zarówno zwykłe jak i skorelowane.
Witam wszystkich serdecznie na kursie podstawowych technik rozwiązywania problemów.
Chciałem państwu opowiedzieć o strukturze tego kursu, zanim zaczniemy. Otóż podzieliliśmy cały kurs na pięć części, które będziemy nazywać lekcjami i króciutko opowiem o co chodzi w tych lekcjach.
Lekcja numer jeden będzie dotyczyła konkretnej techniki rozwiązywania problemów.
Nazywamy tą technikę techniką upraszczania.
Bardzo często tak jest łatwiej.
Lekcja numer dwa będzie dotyczyła kolejnej techniki rozwiązywania problemów, mianowicie techniki szukania z nawrotami.
Bardzo często szukamy rozwiązania idąc w jakimś kierunku.
Dochodzimy często do wniosku, że ten kierunek nie prowadzi do rozwiązania.
Wówczas dokonujemy pewnego nawrotu, zmieniamy pewne decyzje, szukamy w innym kierunku i tak dalej i tak dalej.
Zilustrujemy tę technikę na kilku przykładach.
Lekcja numer trzy będzie dotyczyła innych technik, które stosują się do problemów z ograniczeniami.
Bardzo często rozwiązujemy problemy, które są zdefiniowane na podstawie wielu ograniczeń i rozwiązanie te ograniczenia musi spełniać.
Przyjrzymy się w tej lekcji kilku takim problemom i kliku przykładom zastosowania tej techniki dla takich problemów z ograniczeniami.
Lekcja numer cztery kolejna technika.
W nawiązaniu do kwestii projektowania nawigacji badacz amerykański wprowadził takie dosyć ciekawe pojęcie zapachu informacji.
Nazwał to scent of information.
Chodzi tu o sytuację, taką w której, na przykład często w życiu realnym mamy do czynienia.
Czujemy jakiś smakowity zapach dochodzący z jakiejś kuchni, czy restauracji, prawda, i podążając za tym zapachem mamy ochotę skosztować potrawę, której zapach tam czujemy.
Podobna sytuacja jest w przypadku pracy użytkownika na stronach.
Przeglądając treść kolejnych stron widzi on, że albo zmierza w stronę informacji której szuka albo poprzez opisy, hasła, czy grafikę widzi, że oddala się od zagadnienia do którego dąży.
Stąd jakby właśnie istotne jest to, aby to podążanie za tym zapachem informacji było rzeczywiście tutaj widoczne.
Oczywiście też zaproponował kilka sposobów w jaki ten zapach informacji można wzmacniać.
Im głębiej w tej strukturze użytkownik się zagłębia, czyli powinien być taki jakby efekt lejka, że idąc od rzeczy ogólnych do bardziej szczegółowych, dochodzimy do informacji, której szukamy.
Na tym slajdzie są pokazane właśnie te elementy, które wzmacniają wyczucie informacji, które mają na celu właśnie pójście zgodnie z jakby kształtem tego lejka, który tu jest pokazany na ekranie.
Natomiast zaburzenie tej właśnie drogi, to pogorszenie jakby tego zapachu informacji.
Ma miejsce właśnie wtedy, kiedy poza poszerzeniem treści strony nagle napotykamy na fałszywe linki albo linki źle opisane, nieprecyzyjnie, czy nawet brakujące słowa kluczowe.
Ponieważ użytkownik właśnie te słowa kluczowe widząc na stronie.
Nieodłącznym elementem stron www są często banery i nagłówki.
Szczególnie chodzi o reklamy.
Szczególnie ten efekt występuje wtedy, kiedy tak jak tutaj widać na tych obrazkach powyżej banera, umieszczono jakieś elementy nawigacyjne.
Tu mamy dla porównania dwie strony: stronę Onetu i stronę wirtualnej polski.
To znaczy powyżej tego szerokiego paska zawierającego reklamę użytkownicy jakby nie widzą elementów, które tam są, ponieważ ten pasek bardzo silnie odciąga ich uwagę.
W przypadku wirtualnej polski baner jest umieszczony powyżej menu, stąd jakby użytkownicy przeszukują opcję menu i bez problemu znajdują.
Jeżeli chodzi o dobór treści do stron, dobór czcionek, formatowanie tekstu, na ten temat jest wiele materiałów w literaturze.
Jeżeli chodzi o kwestie typografii, tutaj na tym slajdzie, są podane podstawowe zasady.
No przede wszystkim nie stosujemy na stronach www czcionek szeryfowych.
Te czcionki są zarezerwowane dla druku na papierze.
Również użytkownicy popełniają mniej błędów.
Nie jest on przeznaczony do czytania długiego, ciągłego i no studiowania, powiedzmy jakiś głębszych wywodów opisanych długimi zdaniami.
Jeżeli się okaże, że on się nie otwiera, bo nie jest to link, będą tym mocno rozczarowani.
Również nie używać podkreśleń, bo to sugeruje, że to jest link, ani również kroju italic, ponieważ italic, no po prostu z reguły brzydko wygląda na ekranie.
Jest ten tekst źle generowany przez kartę graficzną.
Także jeżeli mamy konieczność rzeczywiście, żeby wyróżnić jakiś fragment tekstu, stosujmy kolor, rozmiar, wytłuszczenie, ale nie podkreślenie i nie kolor niebieski oraz nie krój pochyły.
W internecie i również w poradnikach do projektowania stron znajdziemy sporo materiałów dotyczących użycia kolorystyki.
Tutaj oczywiście trudno jest ingerować w kreatywność projektantów stron.
I tego typu zestawienia będą bardzo męczące dla oka i również oczywiście będą one sprzyjały popełnianiu błędów i przeoczaniu informacji, jeżeli takie zestawienia rzeczywiście na stronach zostaną użyte.
Generalnie można powiedzieć, że zasada wiodąca to jest im mniej kolorów tym lepiej.
Kolorów powinno być w zasadzie kilka, no góra kilkanaście.
No oczywiście współczesne karty graficzne umożliwiają generowanie znacznie większej liczby barw, natomiast tych kolorów wiodących w zasadzie powinno być jak najmniej.
Unikajmy stosowania kolorów niestandardowych.
Kolory czyste, kolory standardowe są tutaj najbezpieczniejszym wtedy rozwiązaniem.
Zdarzają się strony, na których projektanci umieszczają tło graficzne, czy nie daj Boże jakiś znak wodny.
Tego typu efekt spowoduje zlewanie się tekstu z tym znakiem i pogorszenie czytelności informacji, czytelności obrazu.
Tutaj na tym slajdzie widać efekt, który to daje ten wzór, który tutaj na tym slajdzie widać, jest nazwany drobny piasek.
Prawda, jeżeli ten drobny piasek już tak pogarsza czytelność tekstu, no to co mówić o jakimś innym wzorze, typu gruby piasek czy coś innego.
Natomiast najlepiej jest ogólnie unikać jakby wszelkiego typu podkładów pod tekst, bo czytelność tego tekstu nigdy z takim podkładem nie będzie lepsza.
Tu na tym slajdzie widać, taki można powiedzieć dosyć udany przykład, kiedy zastosowano tło graficzne, a nie pogorszono czytelności tekstu.
Jest to rozwiązanie, które jest oczywiście dobre na dosyć dobrych monitorach i ta delikatna krateczka, którą tutaj rzeczywiście mamy, pozwala na dosyć dobre czytanie tekstu, który jest podany białymi literami.
No ale mimo wszystko, jednak bez tej białej krateczki też ten tekst byłby dość czytelny.
Także tutaj widać, że użycie takich delikatnych elementów no jest dosyć ryzykownym rozwiązaniem i nie zawsze się udaje zachować dobrą jakość obrazu, tak jak w tym przypadku to się udało.
Istotną rolę we wspomaganiu nawigacji użytkownika stanowią linki i sposób opisu linków jest też rozwiązaniem, które bardzo jakby przyspiesza pracę użytkowników na stronach.
Linki tekstowe mogą być linkami zawartości.
Mogą być to linki kategorii, ponieważ tutaj te podziały są dość umowne.
Więc ja może nie będę tego rozwijał.
Tak czy inaczej, nazwa linków powinna być, no, komunikatywna, bo po prostu powinna dobrze obiecywać, co użytkownik znajdzie, gdy te linki kliknie.
Również linkami są przyciski naprzód i wstecz, które są w przeglądarce, ale oczywiście one nie wchodzą w zakres projektu samej strony.
Są niejako dostępne w ramach przeglądarki.
Jak linki grupować?
No przede wszystkim układ linków powinien mieć charakter hierarchiczny.
Linki powinny być pogrupowane w kategorie tematyczne, a najlepiej jeżeli właśnie te kategorie tematyczne powstały jako wynik sortowania kart.
Wynik współpracy z użytkownikami, ponieważ ich sposób postrzegania w jakich grupach tematycznych te linki by widzieli, jest tutaj nadrzędny w stosunku do tego co widziałby projektant.
Linki mogą być nadmiarowe, to znaczy może być sytuacja taka, w której na przykład do, nie wiem, rowerów górskich, dochodzimy dwoma różnymi ścieżkami.
Nawet natomiast jeżeli ta sama strona jest podlinkowana dwoma różnymi linkami o różnym brzmieniu, nie przeszkadza to, że dwoma różnymi drogami możemy dojść do te samej treści.
Tutaj na tym składzie mają państwo pewną zgadywankę.
Można powiedzieć, to znaczy sposób w jaki linki się konstruuje, może być bardzo różny.
Ten sposób, który państwo tutaj widzą, był stosowany kilka, kilkanaście lat temu, gdzie podawano krótką nazwę linku i takie jakby dopowiedzenie tekstowe, co użytkownik znajdzie, gdy w ten link kliknie.
To jest sposób, który był stosowany do niedawna.
Ja go tutaj przytoczyłem, właśnie przede wszystkim po to, żeby pokazać państwu, jak linków nie należy, być może, konstruować.
Ta grupa linków którą tutaj widzimy po prawej stronie, to są linki które są strasznie ogólnikowe.
Jak ktoś chciałby zapytać: no co ja tam znajdę, gdy te linki kliknę.
W zasadzie trudno jest taką odpowiedź udzielić, ponieważ i skróty, i nazwy są tak pojemne, że rzeczywiście ciężko jest ustalić, co w nich się znajduje.
Również w języku polskim linki, które państwo tutaj widzą, też oczywiście są linkami nieprawidłowo skonstruowanymi.
No również, prawda, żaden link nie powinien dublować przycisków, które są dostępne w przeglądarce, bo przyciski naprzód i wstecz są w przeglądarce dostępne.
Tu jest też mała zgadywanka.
Prawda, jeżeli krótka historia naszej firmy, prawdopodobnie nikt na nią nie spojrzy.
Bo jak mamy zapowiedź krótką, to pewnie będzie kilka ekranów, no i linki podane w formie pytań: czy chcesz poznać historię naszej firmy?
I to są rzeczy które ze sobą współpracują.
Teraz może kilka słów o grafice.
Grafika jest oczywiście nieodłączną częścią projektu stron www, projektu serwisów i różne rodzaje grafiki w różnych zastosowaniach są stosowane.
Była ta grafika stosowana wtedy, kiedy na stronach nie umieszczano jeszcze zdjęć.
Tu mamy przykład również strony bardzo mocno nasyconej grafiką, gdzie pewien, no, mroczny klimat.
Prawda jest nieodłączną cechą marki, o której tutaj mowa i też oczywiście bez wykorzystania grafiki w odpowiedni sposób stworzenie takiego klimatu nie byłoby możliwe.
Jeżeli pozostałe podstrony nie są w tej samej konwencji utrzymane, to ja myślę, że takie rozwiązanie również jest uzasadnione.
Natomiast linki graficzne z reguły nie są również indeksowane przez bota wyszukiwarki i z drugiej strony też linki graficzne nie zawsze od razu są widoczne, że to naprawdę jest link.
Być może, że ustawiliśmy sobie wszystkich zawodników w szeregu i liczyliśmy.
Pierwszy mecz, pierwsza para, drugi mecz, druga para, zwycięscy przechodzą dalej.
Potem zwycięscy grają ze sobą i tak dalej, i liczyliśmy liczbę rozegranych meczy i być może, że się pomyliliśmy o jeden.
Tu proszę zwrócić uwagę, że możemy w tym problemie stosować jakąś metodę już wcześniej poznaną.
Możemy problem uprościć: co by było, gdyby było tylko siedmiu uczestników turnieju.
Ile meczy wymaga przeprowadzenie turnieju przy siedmiu graczach albo siedemnastu, albo dwudziestu trzech, albo stu jeden.
Możemy poszukać niezmiennika.
Tu mamy proces meczy, który się powtarza.
Jeden mecz, drugi mecz, trzeci mecz, ale i liczbę zawodników.
Robi się coraz mniejsza, ale może jest coś w tym problemie, co się nie zmienia.
Wyrażony po prostu w latach, miesiącach, dniach, przy czym system będzie zaokrąglał na przykład miesiąc do 30 dni.
Możemy też stworzyć proces biznesowy rozpoczynany przez przyjście określonego sygnału.
Sygnały są bardzo podobne do wiadomości którymi zajmowaliśmy się w poprzedniej lekcji, ale nie mogą zawierać żadnych dodatkowych informacji.
Zawierają po prostu tylko i wyłącznie informację o tym, że coś się zdarzyło.
Sygnały i wiadomości bywają wykorzystywane, no w zależności od występujących potrzeb.
Najczęściej procesy biznesowe jednak rozpoczynane są ręcznie.
Proces biznesowy może również zakończyć się na kilka różnych sposobów.
Najczęściej będzie się kończył tak zwanym terminate end event, czyli po prostu zakończeniem całego procesu biznesowego, ale może się zakończyć też na kilka innych sposobów.
Bywa to bardzo przydatne, jeśli musimy naprawić skutki działań, które podjęliśmy.
Może zakończyć się wysłaniem sygnału.
Może również pojawić się zdarzenie nazywające się po prostu end.
To jest zdarzenie kończące określony przepływ sterowania, ale nie kończący całego procesu, jeśli mamy w naszym procesie kilka równoległych przepływów.
W trzeciej części wykładu będzie kontynuowane omawianie tworzenia modelu bazy danych w postaci diagramu związków encji.
Zostaną przedstawione pojęcia związku niejednoznacznego oraz rekurencyjnego.
Związek niejednoznaczny, to taki związek, który nie jest jednoznaczny.
Inaczej mówiąc, każdy związek którego nie da się opisać funkcją, nazywamy związkiem niejednoznacznym i musi on zostać sprowadzony do dwóch lub więcej związków jednoznacznych.
Wprowadzamy nową encję e zero i n jednoznacznych związków binarnych z i e zero e i łączących nową encję z encjami już istniejącymi.
Klucz encji e zero jest sumą kluczy encji e jeden do e n.
Wprowadzana encja reprezentująca związek nazywa się encją asocjacyjną.
Jest ona zawsze encją słabą, czyli zależną, bo związki łączące ją z encjami argumentami związku niejednoznacznego są związkami identyfikującymi.
Na slajdzie przedstawiony jest przykład związku niejednoznacznego zachodzącego pomiędzy dwiema encjami student i grupa.
Student jest zapisany do kilku grup studenckich: laboratoryjnej, językowej, wykładowej, a w każdej grupie studenckiej jest wielu studentów.
Związek jest niejednoznaczny.
Nie da się go opisać funkcją.
Stosując opisaną poprzednio metodę wprowadzimy nową encję asocjacyjną, której zadaniem będzie opisanie związku jaki zachodzi pomiędzy studentami i grupami.
Encja asocjacyjna skład grupy zostanie powiązana z encjami wyjściowymi poprzez związki jednoznaczne, w których encje wyjściowe pozostają po stronie jeden, a encja asocjacyjna po stronie wiele.
Jednoznaczny identyfikator, klucz encja asocjacyjna skład grupy, stanowi suma kluczy obcych pochodzących z encji, które wchodzą w związek niejednoznaczny.
Ten klucz może, ale nie musi zostać kluczem głównym encji asocjacyjnej.
Obecnie po transformacji każda instancja encji po stronie jeden zostaje powiązana z co najwyżej jedną instancją encji po stronie wiele.
Zawartość tabeli, której encja skład grupy jest modelem, stanowić będą pary wartości id studenta i id grupy.
W ten sposób każdy student zostanie jednoznacznie przypisany do tych wszystkich grup w których powinien się znaleźć.
Na kolejnym slajdzie przedstawiony jest przykład transformacji dla związku trójargumentowego.
W skład tego związku wchodzą trzy encje: przedmiot, grupa i wykładowca, a związek można opisać w sposób następujący:
Wykładowca prowadzi zajęcia dla grupy studenckiej z jakiegoś przedmiotu nauczania.
Stosując opisaną wyżej metodę wprowadzimy nową encję asocjacyjną, której zadaniem będzie opisanie związku jaki zachodzi pomiędzy wykładowcami, przedmiotami nauczania i grupami studenckimi.
Jednoznaczny identyfikator nowej encji tworzą trzy wprowadzone związki, to jest klucze obce.
Do encji grupa wykładowca i przedmiot istotne jest ustawienie typu tych związków jako identyfikujących.
To właśnie spowoduje umieszczenie kluczy obcych z encji grupa wykładowca i przedmiot w części identyfikującej, czyli wśród atrybutów klucza głównego encji asocjacyjnej zajęcia.
W encji asocjacyjnej można umieszczać atrybuty charakteryzujące związek.
Na przykład związek pomiędzy wykładowcami, przedmiotem i grupami studenckimi.
Atrybuty godziny rozpoczęcia zajęć, czas trwania zajęć, sala w której się zajęcia odbywają.
Spostrzeżenie to wskazuje na fakt, że istota związku nie jest jednoznaczna i może zależeć od jej interpretacji.
Związek rekurencyjny jest to związek zachodzący pomiędzy tą samą encją.
Inaczej mówiąc, po obu stronach związku występuje ta sama encja.
Ten związek pokazany na slajdzie może zostać opisany werbalnie.
Jedna osoba, w tym przypadku wykładowca, jest kierownikiem drugiej osoby, czyli możemy stosując rozwiązanie ze związkiem rekurencyjnym pokazać podległości w strukturze na przykład szkoły wyższej.
Ten typ związku, związek rekurencyjny, nie może wystąpić w roli związku identyfikującego i ponadto musi dopuszczać występowanie wartości null jako wartości klucza obcego.
W pokazanym przykładzie na kluczach obcych zostały utworzone przez projektanta bazy danych indeksy, co jest dość często stosowaną praktyką.
Związek jednojednoznaczny nazywany też popularnie związkiem jeden do jeden.
Związek jednojednoznaczny, to związek jednoznaczny, szczególny przypadek związku jednoznacznego, którego instancja jest różnowartościową funkcją częściową.
Inaczej mówiąc, każdej instancji encji po stronie wiele odpowiada co najwyżej jedna instancja encji po stronie jeden.
Na przykład związek każdy student jest osobą.
Osoba może być studentem, ale nim być nie musi.
Należy zwrócić uwagę na to, że encje po obu stronach związku są identyfikowane przez ten sam atrybut klucza głównego.
Związek jednojednoznaczny może zostać odwzorowany w tabelę bazy danych na jeden z trzech sposobów.
Podajemy te sposoby na przykładzie związku pomiędzy encjami osoba i student, przy założeniu, że każdy student jest osobą, no ale nie każda osoba musi być studentem.
Używamy dwóch oddzielnych tabel student i osoba.
W tabeli osoba zapisujemy atrybuty wspólne dla wszystkich osób.
W tabeli student zapisujemy klucz główny z tabeli osoba identyfikujący studenta jako osobę oraz atrybuty charakterystyczne tylko dla studentów.
To rozwiązanie, aczkolwiek bardzo eleganckie jeżeli chodzi o schemat, bardzo jasne i nie pozostawiające wątpliwości co do możliwości identyfikacji studentów i osób studentami niebędącymi, ma wadę.
Wadą tego rozwiązania jest konieczność częstego używania złączenia dwóch tabel, zaletą zaś jest elegancja schematu.
Używamy tylko jednej tabeli, w której są przechowywane wszystkie możliwe atrybuty dotyczące osób.
Jeśli osoba nie jest studentem, wartości atrybutów charakterystycznych tylko dla studentów pozostają null.
Wadą tego rozwiązania jest istnienie kolumn, które z założenia nie będą wypełnione dla wszystkich rekordów oraz niemożność utworzenia niektórych więzów integralności w sposób prosty.
Według mnie to jest dość poważna wada tego rozwiązania.
I wreszcie trzecie rozwiązanie.
Rozwiązanie, w którym używamy jednej tabeli: student.
W przypadku, gdy zajdzie potrzeba reprezentowania jeszcze innego typu osób, jak na przykład pracownik, dla tej kategorii osób definiujemy osobną tabelę.
Gdy jest potrzebna informacja obejmująca wszystkie osoby trzeba stosować sumowanie zawartości tabel.
Metoda ta jest dobra wówczas, gdy podział na kategorie osób jest rozłączny.
Gdy podział nie jest rozłączny, ta sama informacja będzie powtarzana.
Na przykład informacja o pracownikach będących jednocześnie studentami.
Efektem jest niekontrolowana redundancja.
Nie istnieje w tym rozwiązaniu możliwość jednoznacznego stwierdzenia, czy osoby o takich samych danych, ale zapisane w dwóch różnych tabelach są faktycznie różnymi osobami.
Rozwiązaniem tego problemu jest stosowanie kluczy naturalnych, na przykład atrybutu pesel, przy optymistycznym założeniu, że ten pesel jest unikalny.
Na tym kończymy drugi wykład w którym pokazaliśmy podstawowe elementy modelu bazy danych, jakim jest diagram związków encji.
Te podstawowe elementy, to encja, związek.
Mówiąc o związku wyróżniliśmy podstawowe dwa typy związków.
Bardzo wartościowe zastosowanie rzeczywistości wzbogaconej można odnaleźć chociażby w edukacji, w szkoleniach, we wspieraniu zadań.
Dla przykładu mam tutaj program, który służy do nauki anatomii człowieka.
Mam marker, który pełni rolę jakby stołu operacyjnego.
Mogę włączyć też tkankę mięśniową, a mogę nawet włączyć podgląd już całego człowieka, łącznie z powierzchnią skóry i tym podobne.
Na przykład dodatkowe animacje, modele trzy de lub inne interaktywne sceny, które wspomogą proces nauczania.
Możemy pójść nawet jeszcze dalej.
Niedawno jedna z firm produkujących samochody wyprodukowała aplikację, która pozwala zapoznać się z działaniem auta.
Właśnie w taki sposób interaktywny możemy wejść do wnętrza samochodu.
Jeśli nie wiemy na przykład w jaki sposób uzupełnić płyny po podniesieniu komory silnika, w ten sam sposób możemy zeskanować sobie ten obiekt i zobaczyć.
Nasz kierownik powinien mieć możliwość podjęcia decyzji.
Powinien również zobaczyć wszystkie wprowadzone dotąd informacje, czyli datę początkową, datę końcową oraz uwagi z działu kadr.
Będzie to dużo bardziej użyteczny interfejs użytkownika.
Nazwijmy decyzje zgodą, w ten sposób będzie wiadomo co oznacza zaznaczenie checkboxa.
Zmieńmy oczywiście też początek i koniec urlopu oraz uwagi działu kadr na elementy tylko do odczytu.
Zmieńmy też uwagi działu kadr na tekst area, tak żeby móc zobaczyć je wszystkie jeśli dział kadr wpisał więcej niż jedną linijkę i ustawmy etykietę dla naszego przycisku.
W ten sposób mamy zdefiniowany cały interfejs dla naszego systemu.
Mamy tu jeszcze kilka innych aktywności.
Poinformowanie pracownika o decyzji.
Tak na dobrą sprawę możemy zmienić tą aktywność na aktywność automatyczną.
Tam raczej nie będzie żadnego interfejsu.
Na pewno przydałby się jeszcze jakiś formularz w uzupełnieniu grafiku urlopów.
Proszę zwrócić uwagę, na początku nie rozegraliśmy żadnego meczu.
Liczba pozostających w turnieju uczestników jest dziewięćset trzydzieści siedem zero plus dziewięćset trzydzieści siedem da nam dziewięćset trzydzieści siedem.
W momencie jak rozegramy pierwszy mecz liczba rozegranych meczy jeden, liczba uczestników pozostających w turnieju jest dziewięćset trzydzieści sześć, bo jeden uczestnik odpadł.
Tak więc zajęło mi to chwilę i z wykorzystaniem odpowiedniego oprogramowania możesz zrobić bardzo podobną rzecz we własnym zakresie do czego cię gorąco zachęcam.
Dzisiejszy wykład dotyczy wymagań ergonomicznych dla interfejsu www.
Wymagania te są rozwinięciem tego, co mieliśmy dla interfejsu graficznego.
No i oczywiście wynika to z tych specyficznych uwarunkowań w jakich interfejs www jest wykorzystywany.
Dotyczy to zarówno serwisów www, dotyczy to serwisów usługowych, no i generalnie usług online, które są dostępne przez internet z wyłączeniem oczywiście usług, które są dostępne przez urządzenia mobilne.
Natomiast widzą państwo, że też od razu się czynnik mody tutaj włącza, bo w interfejsach www moda i pewne trendy w projektowaniu graficznym są bardzo widoczne.
Drugim charakterystycznym czynnikiem, który tutaj też na slajdzie się pojawił jest łapka.
Interfejs www i generalnie przeglądarka jako taka, umożliwia nam realizację trzech podstawowych funkcji opisanych takimi metaforami, które on właśnie sformułował.
Pierwsza z nich to manipulacja.
W życiu realnym manipulację wykonujemy przy pomocy rąk, natomiast interfejs graficzny, od czasu gdy został wprowadzony, umożliwia nam również wykonywanie manipulacji na ekranie.
Przemieszczanie obiektów, zmianę ich parametrów.
Także ten jakby graficzny tutaj aspekt, jest oczywiście czytelny.
Rozwinięciem tej metafory manipulacji było z kolei przemieszczanie się i tak jak w życiu realnym przemieszczamy się na nogach, czy używamy rozmaitego typu pojazdów.
Interfejs www, który stanowi rozwinięcie interfejsu graficznego, wprowadził hipertekst.
Trzecią metaforą jest komunikacja.
W życiu realnym komunikujemy się przez oczy, prawda, usta, głosem.
Czyli będąc w interfejsie www możemy jednocześnie wykonywać manipulację, tak jak na przykład w grach online możemy się przemieszczać, oczywiście nie ruszając się z miejsca.
No widać, że istnieje tutaj taka wspólna metafora, która tutaj występuje, którą można by nazwać podróżą.
To znaczy, że użytkownik przystępując do pracy z pomocą interfejsu www rozpoczyna pewną podróż.
Tego wrażenia, tego złudzenia nie ma gdy użytkownik przystępuje do pracy z aplikacją desktopową.
I to jest pierwsza, zasadnicza różnica, która odróżnia właśnie interfejs www od interfejsu graficznego, takiego standardowego, że nieodłączną cechą podróży jest przygoda, niespodzianka, odkrywanie czegoś nieznanego.
Jest bardziej nastawione na pewnego typu rutynowe prace, rutynowe zadania, które się wykonuje w sposób powtarzalny.
Podaje, że w podróży mamy możliwość wyboru kierunku.
Termin podaje, że w podróżach tych realnych napotykamy na drogowskazy, mijamy różne krajobrazy, możemy spotkać nowych ludzi, ale również mamy poczucie kontroli, bo możemy przerwać podróż w każdej chwili.
I tego typu wymaganie też w interfejsie www występuje.
Linki, opisy, to są nasze drogowskazy, krajobrazy.
To są oczywiście rozmaitego typu scenerie, czy scenografie stron, na które wchodzimy, ale również, prawda, wchodząc na przykład na forum czy czat, możemy poprzez sieć poznać nowych ludzi.
Również oczywiście oczekujemy, że drogowskazy które są w tej naszej podróży podane też będą prowadziły we właściwym kierunku.
Czy informacja która nie będzie przydatna jakby w wykonywaniu konkretnych bieżących zadań, no zostanie potraktowana jako.
W tym momencie wystąpi interfejs www poprzez to oczywiście, że umożliwia podróż i zwiększa zaangażowanie emocjonalne użytkownika.
Wprowadził jedną bardzo istotną zmianę do interfejsu graficznego, mianowicie elementy aktywne.
Mówiłem tutaj, że występuje łapka jako taki standardowy element.
Jako kursor, który jednocześnie sygnalizuje które elementy są aktywne i które można kliknąć żeby przenieść się w inne miejsce, czy otworzyć, bądź uruchomić jakąś funkcję z której chcemy skorzystać.
Ten aspekt to oczywiście jest aspekt taki typowo operacyjny i wiąże się on również później z opinią użytkownika jak dobrze dany serwis, jak dobrze dana usługa, pewne zadania robocze wspomaga.
Ale jest jeszcze drugi aspekt, nazywany user experience.
Na polski język w zasadzie trzeba by to przetłumaczyć jako doświadczenie użytkownika, czy raczej jako przeżycia, przeżycie użytkownika.
I ten aspekt user experience, on dotyczy aspektu emocjonalnego.
Użytkownik oczywiście z jednej strony ocenia stronę czy usługę pod kątem zadaniowym, jak trafnie ona i skutecznie wspiera zadania robocze, które użytkownik ma do wykonania.
Ale drugim wymiarem tej oceny jest to, jakie wrażenia emocjonalne ta strona wywołuje.
Stąd jakby ten aspekt user experience jest bardzo ważny, ponieważ, no jeżeli ten aspekt nie będzie uwzględniony w projekcie strony, ta strona będzie sucha, jałowa.
Druga opcja: aby się czegoś dowiedzieć.
Trzecia, aby się rozerwać i czwarta, aby poznać innych.
Przechodząc już do spraw projektowych omówimy sobie po kolei główne aspekty związane z projektowaniem nie tylko stron www, ale generalnie z rozwiązaniami które w interfejsie www występują.
Pierwszym takim istotnym aspektem jest rola strony głównej.
W przypadku interfejsu www, strona główna oczywiście stanowi rodzaj jakby przedpokoju, rodzaj zapowiedzi, która ma sygnalizować co użytkownik znajdzie dalej, gdy w ten serwis głębiej już zacznie wnikać.
A mogą być również serwisy, które mają tylko i wyłącznie kształtować wizerunek określonej marki, firmy, czy określonej nawet społeczności.
Również jeżeli byśmy tutaj mówili o serwisach typowo komercyjnych, mogą być serwisy których zadaniem jest doprowadzić do transakcji, gdzie użytkownik kupuje określony produkt i za niego od razu płaci.
Ale mogą być też serwisy, których zadaniem jest w zasadzie wspomaganie tradycyjnych kanałów sprzedaży i ich rolą jest doinformowanie użytkownika o charakterystykach produktu.
Natomiast sprzedaż i sama transakcja będzie miała oczywiście miejsce w kanałach tradycyjnych.
I również zachowania samych elementów, czy również nawet kolorystyka powinny być przestrzegane później na podstronach.
Czyli od razu widzimy, że rozwiązania, które użytkownik zobaczy po raz pierwszy najczęściej na stronie głównej, powinny być powielane również na podstronach, no bo tego użytkownik się spodziewa.
Oprócz narzucania tego lokalnego standardu czy szablonu, strona główna stanowi zapowiedź treści na podstronach.
Czyli stąd również wynika to, że pewna spójność tematyczna powinna tutaj być zawarta.
I treści zawarte na podstronach oczywiście będą odpowiednio zatytułowane, ale strona główna powinna informować o kategoriach informacji czy kategoriach usług, które na tych stronach będą dostępne.
Ewolucja serwisu w ostatnich latach również sprawiła, że użytkownicy są niecierpliwi.
Im się spieszy, w związku z tym bardzo często poszukują opcji typu na skróty, ponieważ chcą uzyskać szybko dostęp do najczęściej używanych usług.
I z tego też powodu taka opcja szybkiego dostępu jest jedną z najczęściej czy najbardziej popularnych, można powiedzieć, opcji, która też tych naszych użytkowników interesuje.
Również istotną kwestią jest to, że strona główna narzuca pewną konwencję, która ma być obowiązująca w serwisie.
No to oczywiście użytkownik spodziewa się, że tak samo będzie i na podstronach.
W ramach tego wykładu oczywiście nie uda się omówić wszystkich zagadnień związanych z projektowaniem stron i ergonomią interfejsu www.
Mamy tutaj sporo literatury na ten temat, jest sporo książek, które projektantom mogą być pomocne.
Ja chciałbym tylko omówić najważniejsze kwestie, które z tym są związane.
Chodzi mi tutaj konkretnie o oznaczanie hiperłącz.
Linki były kiedyś oznaczane właśnie klasycznie, w sposób barwny przez oznaczenie kolorem granatowym, jak i również były obowiązkowo podkreślone.
No i również druga zasada była taka, że po kliknięciu linku następowało przeładowanie całej strony.
Stąd można powiedzieć, że obowiązywał pewien standard, który można nazwać, że jeden skok to jest jedna jednostka nawigacji i dalej przeładowanie jednego ekranu również stanowi jedną jednostkę prezentacji.
Również stosowanie ramek, czy rozwijanych menu, stanowi też wyjście poza te zasady klasyczne, które zostały opracowane kilkanaście lat temu.
No i one oczywiście też zmieniają sposób, w jaki użytkownik nawiguje, w jaki sposób pracuje z tym interfejsem, ale również nie wszystkie one są zgodne z zasadami ergonomii.
Przestrzeganie zasad również się wiąże na przykład z tym, czy uznamy że linki odwiedzone zostają odpowiednio zaznaczone.
W tej chwili bardzo wiele serwisów nie zaznacza linków, które zostały wcześniej kliknięte przez użytkownika.
A to była jedna z pierwszych zasad, które właśnie przy wprowadzaniu hipertekstów były stosowane.
Stąd jakby zaciera się różnica w niektórych sytuacjach pomiędzy interfejsem www a interfejsem graficznym.
W niektórych nowszych aplikacjach również ich producenci wychodzą na przeciw temu trendowi i na przykład łapka jest obecna również w aplikacjach desktopowych.
Co więcej, na przykład jeżeli pomoc jest dostępna tylko w trybie online, to oczywiście klikając opcję pomoc wychodzimy do internetu.
Może przebywać na urlopie, czy w tym czasie na przykład nie ma wielu innych zaplanowanych urlopów i tak dalej.
Najłatwiej będzie to chyba zrobić przy pomocy zmiennej tekstowej.
Zakończmy więc dodawanie naszej daty i dodajmy kolejną zmienną.
Zmienna będzie się nazywała: notatka działu kadr.
Może być ona po prostu zmienną tekstową i w niej będą przechowywane wszelkie uwagi przekazywane przez dział kadr.
Teraz należałoby jeszcze uzupełnić w oparciu o naszą zmienną nazywającą się decyzja bramki.
Te informacje będą oczywiście uzupełniane na różnych etapach, ale tym zajmiemy się w jednej z kolejnych lekcji.
Pracownik będzie wypełniał datę od i datę do.
Grafik urlopów będzie uzupełniany, znaczy w sprawdzeniu w grafiku urlopów będziemy uzupełniali notatkę działu kadr.
Niestety uzyskana odpowiedź nie jest prawidłowa i warto się zastanowić dlaczego.
No być może, że strzeliliśmy, podaliśmy jakąś liczbę trzy pięć siedem zero jeden, cokolwiek to miało być, a warto się zastanowić jak możemy dojść do prawidłowej odpowiedzi.
I jest kilka pytań które warto sobie zadać.
Jakie możliwe odpowiedzi są, podlegają rozważaniu, jaka jest najmniejsza liczba uścisków ręki które mogła wymienić gospodyni pani kowalska, jaka jest największa liczba takich uścisków.
Warto to wiedzieć zanim dokonamy jakiegokolwiek rozumowania, które nas doprowadzi do ostatecznej odpowiedzi.
I drugą wskazówkę, którą chciałem dać na tym etapie, jest następująca.
Bardzo często przy rozwiązywaniu problemów warto dokonać jakiejś wizualizacji.
Narysować sobie coś, narysować ten pokój, narysować te dziesięć osób w pokoju, żeby zobaczyć sytuację o której mówimy.
No niestety odpowiedź którą usłyszałem nie jest odpowiedzią poprawną i warto się zastanowić dlaczego.
Dlaczego tak jest?
Tu chciałem dać pewien komentarz i może jedną wskazówkę.
Nie możemy brać dwóch prędkości, dodawać i dzielić.
Musimy wyjść z definicji.
Pytanie było o średnią prędkość na całej trasie.
Musimy się zastanowić co to jest średnia prędkość na całej trasie.
Musimy policzyć w jakiś sposób jaka była długość całej trasy.
Musimy policzyć w jakiś sposób ile czasu to zajęło.
Dokonać odpowiedniego dzielenia i uzyskać odpowiedź.
W części pierwszej prezentuję historię języka SQL, standardy oraz typy danych.
W tej części przedstawiam również schemat na podstawie którego będę omawiała kolejne konstrukcje języka.
W części drugiej omawiam instrukcje DDL, czyli języka definiowania danych.
W części trzeciej omawiam instrukcje DML, czyli języka manipulowania danymi, jak również instrukcje dcl, czyli języka kontroli danych.
W części czwartej omawiam podstawy instrukcji select, klauzule select from where i order by.
Popatrzmy teraz na definiowanie własności wykorzystywanych w symulacji.
Korzystamy tutaj z przykładowego procesu dostarczanego razem z systemem bonita, przeznaczonego właśnie do prezentowania symulacji procesów biznesowych.
Każda z aktywności w naszym systemie będzie zajmowała pewną ilość czasu.
Będzie wymagała określonych zasobów i chcemy zdefiniować na potrzeby symulacji te właśnie informacje.
W jej własnościach zakładka simulation pozwala nam na zdefiniowanie różnych elementów branych pod uwagę podczas symulacji.
Po pierwsze, czasu wykonania danego zadania.
Tak dane zadanie może zajmować nam kilka minut, kilka dni, powinniśmy jednak wiedzieć mniej więcej jak długo będzie wykonywane.
I tutaj możemy wprowadzić te informacje, przy czym to będzie minimalny czas wykonania danego zadania.
Możemy określić również to, że dane zadanie zazwyczaj będzie zajmowało trochę więcej czasu.
Następnym pomysłem który możemy zastosować przy rozwiązywaniu tej zagadki jest próba narysowania uścisków dłoni.
Przypuśćmy, że jeśli osoba a przywita się z osobą b możemy te osoby połączyć kreseczką.
Oznacza to, że te osoby ze sobą się przywitały.
Pytanie jest takie, czy możemy też nasz rysunek dziesięciu osób, pan kowalski, pozostałe dziesięć, dziewięć osób uzupełnić o linie które by reprezentowały uścisk dłoni.
I jeśli to zrobimy, możemy dojść do kolejnego wniosku osoba numer osiem i osoba numer zero to para małżeńska.
Jest to para małżeńska, ponieważ nie przywitali się ze sobą, a osoba numer osiem przywitała się ze wszystkimi pozostałymi osobami w pokoju.
Jak pamiętamy pary małżeńskie się nie witają ze sobą, czyli osoba numer osiem i osoba numer zero.
Zaznaczamy tą parę innym kolorem żółtym kolorem i rozumiemy, że to jest para małżeńska i czy możemy pociągnąć to rozumowanie dalej.
Spróbujmy się zastanowić i odpowiedzieć na pytanie: czy już w tym momencie możemy stwierdzić ile razy przywitała się pani kowalska?
I to jest to samo.
Odbywa się głosowanie.
Jeżeli mamy 50 procent poparcia podział zostanie dokonany, jeżeli nie ma 50 procent poparcia pirat zostanie wyrzucony za burtę.
Następny najsilniejszy pirat dokonuje jakiegoś, jakiejś, propozycji.
Pytanie teraz jest następujące.
Na samym początku składania propozycji najsilniejszy pirat musi przedstawić swoją wizję podziału stu sztuk złota.
Jaką propozycję powinien on przedstawić, żeby mieć pewność uzyskania pięćdziesięciu procent poparcia. przy tym zapewniając sobie jak największą liczbę sztuk złota.
Są w ogóle bardzo doświadczeni i mądrzy ludzie, że te głosowania nie odbywają się w sposób jakby zupełnie przypadkowy, ale każdy pirat głosuje po bardzo solidnym przemyśleniu jaką propozycję.
Przypuśćmy, że każdy z was jest tym najsilniejszym piratem.
Mamy dziewięciu słabszych piratów.
Jaką propozycję zrobilibyśmy pozostałej grupie włączając siebie, żeby dostać jak najwięcej sztuk złota, przy tym mieć pewność, że dostaniemy pięćdziesiąt procent poparcia?
Wydaje się, że kluczowym pytaniem tutaj jest następujące pytanie:
Ile okien było w budynku obok którego ojciec z matematykiem prowadzili swoją rozmowę?
I po chwili zastanowienia powinniśmy nie mieć wątpliwości, że liczba tych okien wynosiła trzynaście.
Dokonajmy następującego rozumowania.
Gdyby liczba okien w kamienicy obok była, powiedzmy, dziesięć, też matematyk natychmiast by podał odpowiedź.
Odpowiedziałby ojcu: wiek twoich dzieci jest cztery, trzy i trzy.
Suma jest dziesięć, iloczyn trzydzieści sześć, ale co powiedział matematyk po otrzymaniu tej drugiej wskazówki?
Mimo tego, że wiedział dokładnie jaka jest liczba okien w domu obok nich, odpowiedział: cały czas nie wiem potrzebuję trzeciej wskazówki, potrzebuję dodatkowej informacji.
Wniosek był bardzo prosty.
Tych okien musiało być trzynaście.
Dwa rozwiązania spośród ośmiu rozwiązań mają tą właściwość, że suma trzech liczb daje trzynaście i matematyk poprosił o trzecią wskazówkę, która pozwoliłaby mu na rozróżnienie pomiędzy tymi dwoma możliwościami.
Ja teraz przejdę przez wszystkie te kolejne kroki, żebyś lepiej sobie mógł to utrwalić i zaobserwować jak to działa w praktyce.
Więc powtórzę: zaczynamy od dołożenia na scenę markera, który w naszym przypadku będzie markerem graficznym.
Zobacz, że program oferuje też markery przestrzenne, ale tego teraz nie wykorzystujemy.
Klikam śledzenie obiektów graficznych i wybieram tło, które pokazywałem przed chwilą w Photoshop.
Zobacz, że od razu program ocenił jakość tego tła.
Jeśli mamy trzy gwiazdki, to znaczy że jakość rozpoznawania takiego markera będzie bardzo dobra.
No to teraz dołożymy sobie coś na wierzch i tak jak widziałeś w Photoshop, na wierzch możemy dołożyć kozicę oraz tą trawę, więc ja teraz dokładam konkretnie to zwierzątko.
Zobacz, od razu pokazał mi się cały układ sterowania.
Teraz mi się przyda oglądanie tej sceny pod kątem czterdziestu pięciu stopni.
To nie jest zbyt dobre rozwiązanie.
Dobrze by zbudować trochę przestrzeni, tak więc ja odsuwam ją od kartki i widzisz, że teraz już jest troszeczkę dalej, dzięki czemu mamy wrażenie, że jakaś głębia się buduje.
Oczywiście możemy też przesuwać to po innych osiach, a jeśli chciałbyś obrócić bądź zeskalować, to zobacz, że możemy przejść tutaj tym narzędziem w postaci takiej kulki w inne tryby.
Czasami jest to wygodne, czasami wygodniej jest pracować po prostu pod kątem czterdziestu pięciu stopni.
To zależy oczywiście od tego jakie masz zdjęcie i jak to oglądasz.
I dołóżmy sobie jeszcze jedną rzecz.
Dołóżmy sobie tą trawę na pierwszym planie.
Zwróć uwagę, żeby ta trawa faktycznie była na pierwszym planie, czyli żeby była powyżej.
Jedyne co nam teraz pozostaje to po prostu opublikować tą scenę.
Myślę, że mieliście duże trudności żeby to zrobić.
Nie sądzę, żeby komukolwiek udało się to zrobić, co w zasadzie prowokuje nas do następującego pytania: czy nie umiemy tego zrobić czy może nie ma rozwiązania?
Może nie można pokryć tymi kostkami domina szachownicy z wyciętymi przeciwległymi rogami?
Tutaj w znalezieniu ostatecznej odpowiedzi jeszcze raz pomaga nam niezmiennik.
Proszę zwrócić uwagę, że mamy czynność która się powtarza.
To samo co było w turnieju tenisowym, to samo co było w łamaniu tabliczki czekolady.
Tutaj kładziemy domino, kładziemy pierwsze domino, kładziemy drugie domino, kładziemy trzecie domino.
Czy łamiemy tabliczkę czekolady raz, drugi raz, trzeci raz czy gramy pierwszy mecz, drugi mecz i trzeci mecz.
W tym przypadku postarajmy się wobec tego znaleźć jakiś niezmiennik.
Co jest tu niezmiennikiem?
Kładziemy te kostki domina jedną za drugą, czy jest coś co się nie zmienia?
Po zastanowieniu się możemy dokonać następujące obserwacji: jakkolwiek położymy kostkę domina, pokrywamy jedno pole białe i jedno pole czarne na szachownicy.
Czy położymy kostkę domina pionowo czy poziomo, pokrywamy jedno białe pole, jedno pole czarne.
Nie sposób jest położyć kostkę domina i pokryć dwa białe pola, albo dwa czarne.
No widać dlaczego tak musi być.
Wobec tego, kładąc kolejne kostki domina przy położeniu pierwszym przykryliśmy jedno białe, jedno czarne.
Przy położeniu drugiej kostki domina będą dwa białe pokryte, dwa czarne pokryte.
Przy położeniu dziesięciu kostek domina pokryjemy dziesięć białych kwadracików, dziesięć czarnych kwadracików.
Jeżeli wytniemy dwa przeciwległe kwadraciki, to szachownica ma trzydzieści dwa białe pole i trzydzieści czarnych albo trzydzieści dwa czarne pola i trzydzieści czarnych.
Jakkolwiek domina te byśmy nie układali, jest rzeczą niemożliwą uzyskanie całkowitego pokrycia.
Dlatego tutaj zauważenie niezmiennika w tym problemie prowadzi nas do natychmiastowego rozwiązania.
Mający mniejszy rozmiar zostanie on uzupełniony białymi znakami do długości n.
W przypadku napisów znakowych zmiennej długości nie zostaje to uzupełniane białymi znakami.
Jeśli wpiszemy mniej znaków, mamy po prostu mniej znaków na danej zmiennej.
Typy numeryczne w standardzie to numeric decimal oraz numeric PS.
Jest to typ dziesiętny, float real, typ zmienno-pozycyjny oraz integer typ całkowity.
Oracle ma typ numeryczny .
Może to być number od n bądź number od PS.
Jeśli chcemy, żeby zmienna była typu integer, to wpisujemy number od trzydzieści osiem.
Zmienna typu float to jest number od PS.
Number jest typem zmiennej długości mogącym przechowywać wartości dodatnie i ujemne oraz wartość zero.
Wymagania pamięciowe związane z przechowywaniem wartości typu number wynoszą mniej więcej połowę liczby cyfr znaczących wartości.
Na przykład liczba dziewięciocyfrowa zajmuje sześć bajtów.
Warto pamiętać, że p oznacza sumaryczną liczbę cyfr, a s liczbę cyfr po przecinku.
Typy date w standardzie, to date, data, time godzina oraz time stamp, data i godzina.
W Oracle'u do wersji dziewięć był tylko jeden typ daty.
Data jest to typ daty stałej długości, siedmiobajtowy czas przechowywany jest jako część daty.
Zadając zapytanie otrzymamy datę w formacie dd mon yy, chyba że zmienimy domyślny format daty przez zmianę parametru NLS data.
Format typ danych data jest nadal natomiast od wersji dziewięć i mamy możliwość używania również innych typów dat i są to interval data second.
Przedział czasu o stałej długości jedenastu bajtów reprezentowany przez dni, godziny, minuty i sekundy.
Interval year to month.
Przedział czasu o stałej długości pięciu bajtów reprezentowany przez lata i miesiące.
Time stamp wartość o długości od siedmiu do jedenastu bajtów reprezentująca datę i czas w tym ułamkowe części sekundy.
Wartość o długości od siedmiu do jedenastu bajtów reprezentująca datę i czas z uwzględnieniem trefy czasowej i z przeliczeniem tej strefy na lokalną dla klienta.
W Oracle’u jeśli chodzi o duże obiekty mamy możliwość zadeklarowania zmiennych jako long.
Typ zmiennej długości do dwóch gigabajtów długości jest to stary typ danych.
W tabeli może być tylko jedno pole tego typu row.
Bifile, przechowywany poza bazą danych plik binarny, jego rozmiar ograniczają wymagania systemu operacyjnego.
W standardzie SQL dwa tysiące trzy pojawił się nowy typ danych XML, który reprezentuje dokumenty XML.
W Oracle również jest typ danych reprezentujący dokumenty XML.
Jest to typ XML tape.
Wspomniany już XML tape wbudowany typ obiektowy reprezentujący dokumenty XML.
Oprócz typów standardowych wbudowanych, definiowania przez użytkowników własnych typów danych związanych z opcją obiektową.
Taka możliwość została określona standardem SQL dziewięćdziesiąt dziewięć.
Prezentując możliwości języka SQL korzystamy z przykładowej bazy danych Oracle.
Taki plik udostępniony jest w kursie edu w module materiały.
Tabela debt przechowuje dane na temat działów w których pracują pracownicy.
W tabeli debt mamy pola debt no, czyli pole przechowujące numer działu.
The name, czyli pole przechowujące nazwę działu oraz loc, pole przechowujące lokalizację działu.
Drugą tabelą jest tabela emp.
W tabeli emp mamy następujące pola.
Jest pole emp no.
Jest to pole w którym przechowywany jest numer pracownika debt no.
Pole w którym przechowywane jest klucz obcy pochodzący z tabeli debt, czyli jest to dział w którym pracuje dany pracownik.
i name, pole w którym przechowywane jest nazwisko pracownika, job stanowisko, hire data, data zatrudnienia, sale pensja, com prowizja oraz pole mgr które również jest polem klucza obcego.
W tym polu przechowywany jest numer szefa danego pracownika.
Na kolejnym slajdzie mamy tabelę emp.
Sprawdźmy kto jest kierownikiem Blake.
Blake ma numer siedem osiem trzy dziewięć.
W polu mgr u niego jest numer siedem osiem trzy dziewięć.
To pole jest polem empt, no dla pracownika king oznacza to, że kierownikiem Blake jest king.
Powróćmy do poprzedniego slajdu.
Poza tabelami empt i debt mamy jeszcze tabelę salgrate.
W tabeli salgrate są widełki płac.
Jest tam pole grate oraz pole low sell and high sell, czyli pole z widełkami.
Na kolejnym slajdzie mamy dane z tabeli debt i salgrate, gdzie widzimy jak wyglądają dane w tabeli salgrate.
Mamy tam pięć wierszy, czyli w polu grate mamy numery jeden, dwa trzy, cztery, pięć.
Pięć klas zarobkowych oraz odpowiednio przypisane do nich widełki.
Pytanie, jak tabela salgrate łączy się z resztą diagramu?
Mianowicie związek pomiędzy tabelą salgrate, a tabelą emp jest następujący:
Pracownik znajduje się w danych klasie zarobkowej, jeśli jego pensja jest w widełkach, czyli sprawdźmy w której klasie zarobkowej jest pracownik Blake.
Patrzymy na pole sal.
U pracownika Blake jest to wartość dwa osiemset pięćdziesiąt.
Następnie zaglądamy do tabeli salgrate.
Wartość dwa osiemset pięćdziesiąt jest pomiędzy dwa tysiące jeden a trzy tysiące, czyli pracownik Blake pracuje w klasie zarobkowej czwartej.
Możemy też określić, że wychodzące z danego zadania przejścia są rozłączne, czyli możemy pójść tylko jedną ze wskazanych tras.
Możemy powiedzieć również, że dane zadanie jest ciągłe.
Nie możemy go przed przerwać w trakcie wykonywania po to, żeby zająć się innym, ważniejszym zadaniem.
To będzie wpływało na przebieg symulacji ze względu na to, że utrudnia to nieco pełne wykorzystanie różnych pracowników.
Czasem w symulacjach wykorzystujemy również różnego rodzaju dodatkowe dane.
Nie jest to jednak zbyt częste zjawisko.
Nie jest ciągła.
Może być przerwana jak osoba, która pakuje zamówienie, może zająć się chwilę pakowaniem innego.
Normalnie trwa sześć godzin i
formaty grafiki stosowanej na stronach w zasadzie są trzy w tej chwili wiodące.
Większość obrazów i fotografii to oczywiście są w formacie jpg podawane.
Natomiast też oczywiście ten format również w tej chwili jest stosowany.
Obecność grafiki jest o tyle kłopotliwa, że jeżeli tej grafiki jest zbyt wiele strony się wolno ładują.
Tu macie państwo przykład strony, która jest po prostu pokazane jak ona wygląda gdy użytkownik korzysta z modemu, czy z wolnego łącza internetowego.
Widać wyraźnie, że nasycenie grafiką jest tak duże, że długo trzeba będzie czekać aż cała zawartość strony się ściągnie.
Grafika wektorowa oczywiście też w projektowaniu stron jest wykorzystywana.
Warto sobie go obejrzeć z samej ciekawości jak to zostało zrobione bo jest to jeden z najszybciej pracujących systemów tego typu, jakie w internecie są dostępne.
Jeżeli byśmy tutaj jeszcze o grafice chcieli dwa słowa powiedzieć to jeszcze może coś o animacjach.
No oczywiście często się mówi, że animacje pogarszają czytelność tekstu, odrywają uwagę użytkowników.
Część użytkowników nawet zakrywa animacje, żeby łatwiej im było stronę czytać.
Natomiast są one też nieodłączną częścią internetu i reklam, które tam występują.
Nie stwierdzono w zasadzie przypadku, w którym obecność animacji poprawiałaby opinię użytkowników o serwisie.
Jeżeli oni mają do wyboru czy do testowania dwa rodzaje serwisów: jeden taki goły i drugi serwis, ten sam wzbogacony animacjami.
Nie stwierdzono przypadku gdzie po dodaniu animacji oceny tego serwisu by wzrosły.
No również można powiedzieć, że animacje są w stanie pogorszyć mocno wizerunek marki, wizerunek firmy.
No to są tego typu zawody, w których raczej obecność animacji na stronach tych firm jest niewskazana.
Teraz jeżeli chodzi o ogólne zasady stosowania grafiki no można powiedzieć, że jest taka zasada jedna, ogólna.
Oszczędność, to znaczy no lepiej jest dać tej grafiki za mało, ponieważ ten elegancki oszczędny design w dużym stopniu właśnie bazuje na używaniu grafiki w sposób umiarkowany.
Poza tym użytkownicy również traktują grafikę jako dopowiedzenie tekstu.
Grafika powinna być czymś takim, co jakby pointuje tekst, ale nie stanowi powiedzmy głównego nośnika informacji.
Także tutaj oczywiście grafikę się stosuję, ponieważ ona wzbogaca serwis.
Te zagadnienia są omówione w podręcznikach projektowania stron i projektowanie formularzy.
Jest dosyć trudne można powiedzieć tak, aby to był formularz rzeczywiście łatwy do obsługi i odporny na błędy.
Oczywiście można powiedzieć, że łącza internetowe też są szybsze, przez co strony ładują się szybciej niż kiedyś i to na pewno jest prawda.
Narzekają również na skomplikowaną nawigację, na przeładowanie stron nieistotnymi szczegółami, no i również oczywiście na złą kolorystykę czy przeładowanie serwisów reklamami.
Tutaj oczywiście z jednej strony można powiedzieć, że serwisy www podlegają pewnym modom.
Z drugiej strony zalecenia ergonomii no mają charakter dobrowolny i w dzisiejszych środowiskach wytwórczy o wiele łatwiej jest zaprojektować złą stronę niż było to kiedyś.
Kwestia następna to są animacje flash, prawda, które też tutaj są czymś takim, co użytkownicy często chcą wyłączyć, i które nie niosą ze sobą żadnej wartości dodanej.
Także tutaj, jeżeli chodzi o szybkość ładowania stron, to można powiedzieć są dwa sposoby.
Jedna to jest optymalizacja samego projektu strony, zastosowanie mniejszej ilości grafiki i przygotowanie tej grafiki do ładowania.
Druga metoda to jest po prostu zajęcie użytkownika w czasie, kiedy strona się doładowuje, czyli podanie jakiegoś tekstu do czytania, który się ładuje.
Najpierw użytkownik go sobie czyta i w między czasie ściąga się pozostała część grafiki no i również oczywiście optymalizacja barw, optymalizacja kolorów.
Nie stosowanie kolorów niestandardowych to jest też to, co tutaj w tym zakresie może nam pomóc.
Ja chciałbym tutaj podsumować to jakby w pewnym sensie, traktując te dwa wymiary ocen, którymi użytkownicy strony czy serwisów www oceniają osobno.
Osobno jest ocena analityczna.
Osobno jest ocena emocjonalna.
Dotyczy to również łatwości dostępu do zawartości i ułatwień nawigacyjnych, ułatwień można powiedzieć zadaniowych związanych z pracą, z serwisem.
Bardzo ważne jest również to, aby nie było w projekcie stron czynników irytujących, elementów, które frustrują, albo które są niespójne z pozostałymi elementami kanału dystrybucji.
Tu można podać przykład.
Użytkownicy w odróżnieniu od interfejsu graficznego, jeżeli pracują z interfejsem www to tak, jak mówią z jednej strony oczekują przyjemności, a z drugiej strony chcą mieć tą metaforę podróży.
Chcą mieć również poczucie tego pozytywnego zaangażowania.
Interfejs www powinien w związku z tym tych użytkowników wspomagać.
Jeżeli chodzi teraz jeszcze o kwestię cierpliwości użytkownika.
To są dane podawane w literaturze, ale jeżeli byśmy wzięli pod uwagę niecierpliwość dzisiejszych użytkowników, to można powiedzieć, że ten czas chyba jest dzisiaj już znacznie krótszy.
Wszystkie wyższe wartości będą przez użytkowników odrzucone, bo będą chcieli kupić i pracować na tych stronach, na których po prostu nie tracą czasu na oczekiwaniu.
Jeszcze jeden aspekt może warto omówić na zakończenie tego wykładu to są różnice międzykulturowe, różnice również międzynarodowe.
Zapis amerykańskiej daty oczywiście jest inny niż europejski stąd mogą występować nieporozumienia.
To jest pewien problem, ponieważ no załóżmy, że znalazłem sobie firmę, w której chce coś kupić firma znajduje się w miejscowości halifax.
Też poradniki projektowe dotyczące projektowania stron i projektowania serwisów podają w jaki sposób oznaczać waluty jednostki miar czy innego typu wartości, które mogą być przyczyną jakiś nieporozumień.
Szczególnie jeżeli chodzi o składanie zamówień czy jakieś dokumenty handlowe.
Ostatnia kwestia, to jest kwestia flag.
To są zalecenia opracowane jeszcze przez firmę apple, ale właśnie one dotyczą zarówno kwestii wizualnych, ale również pewnej umiejętności jak rozpoznać oczekiwania użytkownika.
Tu na tym slajdzie widać parę książek, które warto może zakupić czy wypożyczyć.
Jeżeli projektujemy serwisy dotyczą one oczywiście zarówno projektowania samego interfejsu www pod kątem ergonomii, ale również podnoszenia atrakcyjności tych serwisów dla klienta.
W tej lekcji zdefiniowaliśmy sobie dwie zmienne w naszym procesie decyzja oraz wybrany kolor.
Powiedzmy, że chcemy wykorzystać kolor do podejmowania decyzji w naszym procesie.
Zmieńmy sobie nazwę pierwszej aktywności na wybór koloru i teraz chcielibyśmy podążać różnymi ścieżkami w zależności od tego jaki kolor został wybrany w tym kroku.
Powiedzmy, że górny przepływ sterowania będzie przez nas wybrany.
Decission table bywa wygodniejsze, jeśli nasze warunki są trochę bardziej złożone ze względu na to, że pisanie złożonych warunków oczywiście jest możliwe.
Musimy wtedy użyć odpowiednich funkcji logicznych ale bywa to dosyć niewygodne i czasami może prowadzić do różnego rodzaju błędów i nietypowych zachowań systemu.
Odpowiedź, którą państwo podali nie jest poprawna w tym sensie, że można to zrobić lepiej.
Można uzyskać lepszą wartość i chyba cały sekret w drodze, która prowadzi do ostatecznego, optymalnego rozwiązania polega na tym systematycznym przeszukiwaniu z nawrotami.
Możemy to sobie opisać w następujący sposób.
Przypuśćmy, że dokonujemy jakiegoś wyboru.
Bierzemy przedmiot numer jeden do swojego plecaka.
W tym momencie zużyliśmy wagę dwanaście i mamy zapewnioną wartość dwadzieścia pięć.
Mamy jeszcze miejsce.
Możemy wziąć przedmiot numer dwa.
W tym momencie dwadzieścia dwa jest użyte.
Natomiast łączna wartość jest czterdzieści sześć.
Mamy jeszcze miejsce.
Możemy wziąć przedmiot numer trzy.
To jest to początkowe rozwiązane, o którym mówiliśmy wcześniej.
Wszystko się zgadza, ale szukamy lepszego rozwiązania .
Może to było pomyłką, wzięcie przedmiotu numer trzy.
Zobaczmy jak to idzie dalej.
Możemy wziąć przedmiot cztery.
Waga trzynaście jest za duża.
Nie możemy wziąć przedmiotu czwartego ale możemy wziąć przedmiot numer osiem, numer pięć.
Dzień dobry państwu.
W wykładzie drugim z relacyjnych baz danych zaprezentowana zostanie podstawowa metoda projektowania czyli tworzenia schematu relacyjnej bazy danych.
Metoda ta jest dwustopniowa.
W pierwszej fazie projektujemy model danych dla rozważanej dziedziny zastosowań nazywany diagramem związków.
W drugiej fazie przekształcamy otrzymany model w schemat bazy danych.
Program ten służy do rysowania różnego rodzaju diagramów, w tym także diagramów związków
Możemy przy pomocy tego elementu zakończyć ten przepływ, ale reszta procesu, pozostałe równoległe przepływy będą nadal wykonywane.
To zdarzenie bywa bardzo przydatne.
To są zdarzenia, które występują w trakcie działania naszego procesu.
Są one zaznaczone kolorem niebieskim i zazwyczaj należą do jednego z kilku typów.
Ten przykład widzieli państwo w zagadce, od której zaczęliśmy zajęcia.
Możemy też mieć zdarzenie polegające na przechwyceniu wiadomości.
Po dotarciu do tego zdarzenia będziemy oczekiwać na przyjście określonej wiadomości z innego procesu biznesowego.
Jest to bardzo podobne do zadania typu receive message.
Różnica jest tylko taka, że nie jest to część zadania.
Jest to zdarzenie.
Bywa to dla niektórych bardziej czytelne.
Możemy mieć też zdarzenie throw message, które spowoduje wysłanie określonej wiadomości do innego procesu biznesowego.
To jest z kolei bardzo podobne do aktywności send message.
Możemy podobnie oczekiwać na przyjście lub wysłać sygnał
i jeśli sobie rozrysujemy tą sytuację, do czego was wszystkich zachęcałem, mamy pokój mamy dziesięć osób w tym pokoju mamy pana kowalskiego, który jest gospodarzem i mamy dziewięć pozostałych osób.
Jedną z tych osób oczywiście jest pani kowalska, gospodyni.
No, ale nie wiemy, która to jest osoba, dlatego wyróżniamy tutaj pana kowalskiego i on jest zaznaczony kolorem czerwonym, gdyż on jest osobą specjalną.
To była osoba, która zadawala pytania wszystkim pozostałym osobom w pokoju.
Ile razy uścisnęłaś czy ile razy uścisnąłeś kogoś rękę i on zbierał odpowiedzi.
Zadał dziewięć pytań.
Dostał dziewięć odpowiedzi.
I zachęcałem również was wszystkich do zastanowienia się jaka była najmniejsza możliwa liczba, którą uzyskał on w odpowiedzi i jaka była najwyższa możliwa liczba.
Po chwili zastanowienia się możemy stwierdzić, że najniższą otrzymaną liczbą może być zero.
Ktoś po prostu z nikim się nie witał.
Wszedł do pokoju i nie wymienił żadnego uścisku dłoni.
Nie możemy tego wykluczyć, dlatego jest możliwe, że najmniejszą liczbą jaką w odpowiedzi otrzymał pan kowalski jest liczba zero.
Jaką największą liczbę mógł on usłyszeć, zadając pytanie każdej osobie.
Ile razy przywitałeś czy przywitałaś się.
No pomyślmy chwilę.
Jest dziesięć osób w pokoju.
Nie możemy się przywitać z samym sobą.
Nie możemy się też przywitać ze swoim współmałżonkiem ,a mamy tylko małżeńskie pary w pokoju, dlatego największą liczbę przywitań, jaką możemy mieć jest osiem.
Odpadamy my sami i odpada nasz współmałżonek, czyli osiem jest liczbą największą i ostatecznie jeżeli się nad tym zastanowimy, nad wszystkim cośmy usłyszeli, to podsumowując możemy zrobić następującą obserwację.
Pan kowalski zapytał dziewięć osób w pokoju, wszystkich pozostałych osób w pokoju ile razy uścisnęłaś rękę czy uścisnąłeś rękę.
Wszystkie odpowiedzi były różne.
Jak wiemy najmniejszą odpowiedzą możliwą odpowiedzią jest zero, największą osiem i jeszcze raz powtarzam wszystkie odpowiedzi były różne.
Te numery będą reprezentowały liczbę przywitań danej osoby.
Z zero osoba, która się z nikim nie witała.
Proszę zwrócić uwagę, że cały czas nie wiemy która z pozostałych osób, dziewięciu osób, jest panią kowalską.
Nie mamy pojęcia ile uścisków dłoni pani kowalska wykonała.
Cały czas możemy spróbować zgadnąć w tym momencie, którą z tych osób jest pani kowalska no i ile tych uścisków dłoni ona wymieniła.
Zielony i dla tej decyzji również naszą decyzją będzie take transition.
I teraz, jeśli któryś z tych warunków będzie spełniony, system przejdzie daną ścieżka.
Klikamy finisz i wykonujemy dokładnie tą samą operację.
Dla drugiej ścieżki również tworzymy dla niej tabelę decyzyjną z jednym wierszem, w którym wybrany kolor będzie równy niebieski i w tym wypadku przejdziemy daną trasą.
Tak tu niestety akurat jeśli chodzi o tabele decyzyjne czasami pojawiają się drobne problemy.
W zasadzie jedynym doskonałym systemem, który został dotąd stworzony jest nie nie ma takiego.
Błędy mogą znaleźć znaleźć się wszędzie.
Przyjrzyjmy się teraz wynikom symulacji, które zostają wygenerowane przez bonitę.
Bonita domyślnie generuje raport w formie pliku pdf, który możemy sobie otworzyć w dowolnej przeglądarce.
Symulacja ta czy wyniki symulacji są przedstawione w formie szeregu wykresów.
Cały raport zaczyna się od daty początkowej i końcowej symulacji.
Dostaniemy informację o łącznym czasie trwania symulacji.
Dostaniemy informację o czasie obliczeń.
I teraz tak: widzimy po pierwsze jak wygląda rozłożenie naszych zadań na poszczególne loud profile.
Jeśli nasz loud profile składał się z kilku okresów, dostaniemy więcej niż jeden słupek na tym wykresie.
Ten wykres nie jest specjalnie istotny.
Nie ukrywajmy, znacznie ciekawszy jest następujący po nim wykres nazywający się order life cycle instant executation time, który mówi nam ile czasu trwało wykonywanie poszczególnych instancji naszego procesu pracy.
Popatrzmy na to z czego składa się ten wykres.
Ten wykres pokazuje nam jak w czasie rozkładało się długość poszczególnych instancji procesu pracy.
Na wiele sposobów możemy możemy prawda ten problem rozważać, ale nic nie prowadzi do takiego jasnego przekonującego rozwiązania.
Jeszcze raz być może powodem tego jest to, że tych domów jest za dużo.
Uprośćmy więc problem.
Załóżmy, że mamy tylko dwa domy, że mamy powiedzmy dom ef i mamy dom gie i pytanie następujące nagle jest bardzo proste.
Gdzie mamy zamieszkać, żeby suma odległości do wszystkich domów na ulicy była jak najmniejsza.
Jasne jest, że gdziekolwiek zamieszkamy pomiędzy punktem ef i pomiędzy punktem gie suma odległości do dwóch domów, które tam stoją będzie taka sama oczywiście, jeżeli nie wyjdziemy poza ten przedział.
Informacje, które pozyskujemy do sporządzenia analizy kontekstu użytkowania, mogą pochodzić z kilku metod.
Druga metoda to jest metoda wywiadów grupowych.
Rzeczywiście udział kilkuosobowej grupy daje jakąś wartość dodaną i ci użytkownicy wzajemnie w tych wywiadach się jakoś uzupełniają, przekazując informacje pod kątem przyszłego projektu.
Z kolei jeżeli tych użytkowników jest rzeczywiście wielu to może być ona bardzo efektywna pod warunkiem, że użytkownicy są skłonni rzeczywiście te kwestionariusze wypełniać z czym zawsze jest problem.
Stopa zwrotu tych kwestionariuszy z reguły jest niska.
I metoda czwarta, to jest metoda spotkań analitycznych, która jest chyba najszerzej stosowana.
To jest oczywiście forma pewnego typu zebrań, w których po jednej stronie występują dostawcy systemu czy przyszli dostawcy systemu.
Spotkania analityczne mogą również zawierać elementy spotkań z użytkownikami końcowymi, ale i z kadrą kierowniczą.
Sposób organizacji tych spotkań może być bardzo różny, zależny od rodzaju projektu i pewnego typu nawyków które firma dostawca z poprzednich projektów sobie wypracowała z reguły po stronie dostawcy.
Prowadzącym takie spotkanie jest główny analityk czy kierownik projektu natomiast po stronie klienta osoba delegowana do kontaktów z dostawcami jeżeli chodzi właśnie o pracę nad tym powstającym systemem.
Kolejna technika projektowania użytkowego to jest persona.
Persona jest techniką która bardzo dobrze pozwala na zidentyfikowanie wymagań użytkowników, a w zasadzie określenie pewnych scenariuszy w których system będzie wykorzystywany.
Tu mamy przykład takiego właśnie sporządzenia persony pod kątem określonego systemu.
Widzimy, że persona składa się ze zdjęcia jakby wizytówki konkretnej osoby.
Imię i nazwisko może być fikcyjne, ale z reguły stanowisko tej osoby jest prawdziwe.
Oczywiście z tego opisu też wyniknie, jakiego typu funkcje ten system powinien udostępniać, żeby te oczekiwania użytkownika na określonym stanowisku czy w określonej roli były spełnione.
Persona może wyglądać bardzo różnie, bo może być persona typowo tekstowa, może być persona podana w formie graficznej tak, jak widzimy na tych slajdach.
Jeżeli nie był pewien jak szwy czy inne fragmenty ubrania mają się układać mając sylwetkę klienta na zdjęciach mógł krojąc materiał na stole już to uwzględnić.
Persony są często wykorzystywane także i przy projektowaniu intranetów.
I te zdjęcia osób po prawej stronie to są rzeczywiste osoby, czyli rzeczywiście kierownicy którzy tutaj jako obiekty opisu zostali w tym projekcie no wykorzystani.
Teraz czas na metody warsztatowe.
To wypracowanie consensusu czy również jakiegoś typu kompromisu w grupie z reguły odbywa się pod kierunkiem moderatora.
Przedłużeniem metod warsztatowych może być sortowanie kart.
Istnieją również aplikacje które pozwalają na sortowanie kart na ekranie komputera.
Natomiast oczywiście sortowanie na papierze, na stole też jest możliwe z tym, że wymaga oczywiście obecności użytkowników na miejscu.
Kolejna technika, którą stosuję się w projektowaniu użytkowym to jest prototypowanie.
Prototypy mogą występować w dwóch rodzajach.
Tutaj widzimy prototypy wstępne, które są wykonane na papierze, bądź wykonane są w formie rysunkowej.
Są to pewnego typu szkielety, pewnego typu szablony.
Ich zadaniem przede wszystkim jest wspomóc opracowanie formatek ekranowych, które później można wykorzystać na dalszych etapach projektowania.
Jeżeli każdy system ma jakiś look i feel.
Ten look and feel oczywiście będzie widoczny w gotowej aplikacji.
Ta część, którą się testuje na prototypach wstępnych dotyczy tego, co można nazwać jako feel.
To właśnie wyczucie jak system będzie reagował na zachowania użytkownika.
Natomiast, ponieważ warstwa wizualna jest tu bardzo uboga, następuje słabe oddanie tych szczegółów i wyglądu.
Stąd jakby te aplikacje do prototypowania też często pozwalają na przetestowanie najpierw samego przepływu dialogu, a później dopiero na ten przepływ nakłada się określone rozwiązania wizualne.
Techniką modną i często stosowaną są testy użyteczności.
Z reguły te zadania też obejmują serię operacji, które użytkownik ma wykonać.
Zadania są ułożone według trudności od najłatwiejszego do najtrudniejszego.
I też charakterystyczną cechą testów użyteczności jest to, że użytkownik wykonuje pracę pod nadzorem prowadzących badanie i praca użytkownika z systemem jest rejestrowana na video.
Celem jest zebranie uwag i sugestii od użytkowników którzy często podpowiadają co w systemie należy zmienić, bądź poprawić.
No i również celem jest jakby wskazanie czy poziom umiejętności przeciętnego użytkownika jest wystarczający, aby aplikację można było obsługiwać bez przeszkód.
Ewentualnie czy trzeba zapewnić jakiegoś typu manual tutorial, opisy czy innego typu pomoce które użytkownikowi pomogą pokonać przeszkody, na które napotkał w czasie pracy.
Znajdujemy się w tej chwili na ekranie startowym aplikacji realtime board.
Podobnie jak concept board jest to tablica interaktywna.
Jednak oparta na nieco innych założeniach i przeznaczona do trochę innego sposobu pracy.
Teraz, aby rozpocząć pracę powinniśmy po pierwsze zaprosić znajomych, aby również zarejestrowali się w tym systemie.
Robimy to klikając na invite frends i podając ich adresy emailowe.
Możemy podać czy tablica ma być prywatna czy publiczna.
Prywatne tablice są tylko dla zaproszonych użytkowników.
Następnie klikamy create i wybieramy jeden z wielu dostępnych szablonów tablic.
Tych szablonów jest tutaj dosyć sporo.
Klikamy start i teraz aplikacja załaduje taki szablon.
W tej chwili widzimy go w stosunkowo dużym powiększeniu.
Oddalmy trochę widok.
Mamy załadowany szablon.
Rysować, pisać i dokonywać wielu innych operacji na tej tablicy.
Wskaźnik służy do wybierania elementów tablicy.
Tutaj całe nasze tło załadowany szablon jest zgrupowany jako jeden element graficzny.
Możemy odblokować go i ewentualnie rozgrupować klikając na ikonkę z kłódką w jego prawym górnym rogu.
Najpierw klikamy unlocked.
Jak widać, przy użyciu myszki nie piszę zbyt ładnie.
Możemy usunąć elementy przy pomocy gumki.
Możemy skorzystać z gotowych kształtów.
Tutaj również mamy prostokąty, okręgi, linie oraz strzałki.
Możemy też skorzystać z możliwości wprowadzania w wybranym miejscu tekstu.
Przy czym, jak widać mamy pewne możliwości formatowania tego tekstu.
Możemy zmieniać rozmiar czcionki.
Możemy zmieniać kolor.
Możemy zmieniać tło.
Możemy zmieniać wyrównywanie do lewej, do prawej.
Możemy ten tekst wypunktowywać.
Także mamy tutaj dosyć dużo różnych możliwości edycji naszego tekstu i dopilnowania, żeby wyglądał tak, jak chcemy.
Możemy również umieszczać żółte karteczki, którym możemy zmieniać rozmiary.
Możemy wprowadzać tekst który ma być na nich wyświetlany.
Ten tekst będzie automatycznie zmieniał rozmiar tak, aby mieścił się w całości na stworzonej przez nas karteczce i jak najlepiej był jak najbardziej czytelny.
Możemy umieszczać tutaj również łącza między wprowadzanymi przez nas elementami.
Możemy wprowadzać tutaj też pliki.
Możemy, albo załadować plik dostępny w sieci, albo wgrać plik z dysku.
Powiedzmy, że będziemy chcieli w jakimś miejscu umieścić plik znajdujący się na dysku.
Ten, z którego korzystaliśmy w concept board.
Chociaż cały czas możemy to robić.
Możemy zobaczyć jacy inni użytkownicy w tej chwili są zalogowani.
Dostaniemy, klikając przy na ikonkę przy on board, dostaniemy pełną listę wszystkich użytkowników, z którymi pracujemy.
Na tej tablicy możemy usunąć ich ze znajomych.
Możemy również usunąć ich z tej tablicy.
Możemy, tak jak w wypadku concept board, skorzystać z chata.
Jego wykorzystanie w niczym nie różni się od wszystkich innych chatów, które dotąd mieliśmy okazję zobaczyć.
Jeśli jesteśmy płatnym użytkownikiem możemy też skorzystać z chata video.
Możemy zaprosić dodatkowych użytkowników do współpracy.
Możemy pobrać od razu gotowy kod html, pozwalający na umieszczenie linku do tej tablicy, albo zalinkować tablicę bezpośrednio na facebooku.
Klikając na nazwę tablicy zobaczymy jej własności m.in. możemy tutaj określić, czy tablica jest prywatna czy publiczna.
Możemy określić kto może wprowadzać na niej komentarze.
Możemy tą tablicę skopiować, albo usunąć.
Możemy zaznaczyć tablicę jako ulubioną, klikając na gwiazdkę obok jej nazwy.
Możemy też zobaczyć jakie w tej chwili mamy dostępne tablice.
Klikając na i przy nazwie tablicy zobaczymy szczegóły te, które widzieliśmy też klikając na jej tytuł.
Możemy tutaj przy okazji zobaczyć jakie tablice zostały nam udostępnione.
Nasze ulubione tablice, tablice z których ostatnio korzystaliśmy i tablice demonstracyjne, przykłady wykorzystania tej aplikacji przygotowane przez jej twórców.
Możemy zobaczyć naszych znajomych, którzy nie są zaproszeni do współpracy z tą tablicą i w tej chwili żadnych takich nie ma.
Możemy wreszcie skorzystać z bardzo rozbudowanej biblioteki.
Możemy skorzystać z kształtów do prototypowania.
Tutaj zobaczymy bardzo wiele elementów, które normalnie są wykorzystywane w aplikacjach do prototypowania.
Możemy skorzystać też z wykresów.
Przeciągamy wykres na naszą tablicę, klikamy na ikonkę z kołkiem zębatym i wybieramy edycję tego wykresu i teraz możemy wprowadzać wartości które mają być tutaj wyświetlone.
Możemy zaznaczyć, że ma być wyświetlona legenda.
Jak będą nazywały się elementy zaznaczone poszczególnymi kolorami.
Możemy wprowadzić wartości liczbowe dodając kolejne linijki.
Możemy dodawać kolejne kolory, kolejne elementy do naszego wykresu.
W ten sposób stosunkowo łatwo możemy stworzyć dowolny wykres, który stanie się elementem naszej tablicy.
Ponadto w bibliotece mamy też gotowe szablony tablic.
Możemy również skorzystać, jeśli kupiliśmy takowe, z różnego rodzaju dodatkowych elementów, które są dostępne w chrome webstore.
Czy wreszcie możemy skorzystać z elementów, które znajdują się na naszym dysku google, albo też które zostały nam udostępnione przez innych użytkowników na dysku google.
Ta ostatnia funkcja działa momentami trochę słabo.
Concept board jest tablicą interaktywną pozwalającą nam na pracę z różnego rodzaju dokumentami wspólnie z innymi użytkownikami.
Tutaj tą ilość wolnego miejsca możemy zwiększać sobie i możemy zobaczyć też w menu contacts, jakie osoby w tej chwili mamy zaproszone do współpracy z nami przy różnych naszych tablicach.
W tej chwili jak widać lista naszych znajomych jest pusta.
Zaprośmy więc kogoś, aby zaprosić użytkownika musimy podać jego imię, albo nazwisko, albo ksywkę oraz adres emailowy i kliknąć invite.
Zostanie wysłane do niego zaproszenie emailem.
Użytkownik w tym emailu dostanie link, na który będzie musiał kliknąć, aby to zaproszenie zaakceptować.
W momencie, kiedy zostanie ono przez niego zaakceptowane, o tak jak teraz, zmieni się sposób jego wyświetlania.
Zobaczmy między innymi zdjęcie które wprowadził dla swojego pofilu google.
Możemy teraz wybrać z naszej listy jakie osoby zostaną przez nas zaproszone do współpracy nad naszą nową tablicą.
Klikamy w tym celu aby zaznaczyć takich użytkowników i następnie możemy kliknąć start a new board with selected contacts, żeby zacząć tworzyć nową tablicę.
Teraz musimy wprowadzić tytuł naszej tablicy na przykład będzie to pierwsza tablica.
Teraz pracę z concept board możemy zacząć, albo z całkowicie pustą tablicą, albo też wprowadzając jakiś dokument, który będzie służył jako tło na naszej tablicy.
Zaczynamy pracę z pustą tablicą wybierając opcję start a new scrible diagram, a zaczynamy pracę z jakimś istniejącym gotowym dokumentem przeciągając ten dokument do okna przeglądarki tak.
Ten dokument zostanie zaimportowany w całości w związku z czym dłuższe dokumenty będą się importować zwykle trochę dłużej.
Teraz możemy z tym dokumentem pracować na wiele różnych sposobów.
Warto jednak zobaczyć na początek, co widzimy w interfejsie użytkownika na dole.
Na listwie widzimy przede wszystkim osoby, które w tej chwili są zalogowane do systemu.
Obecnie zalogowani jesteśmy tylko my.
Możemy sprawdzić i na wszelki wypadek zaprosić jeszcze raz naszych współpracowników.
W tym celu klikamy na przycisk share na górze, wybieramy osoby, które mają być zaproszone, klikamy send invitation.
Możemy też udostępnić naszą tablicę publicznie klikając share publicity.
Wtedy będzie ona dostępna pod widocznym tutaj share board link linkiem.
Możemy ten link opublikować na facebooku, na twitterze, albo na google plusie.
Klikamy send invititaion.
Decydujemy się zaprosić tylko osoby, które są nam znane.
Możemy tutaj skorzystać z dodatkowych funkcji, takich jak chat video, albo możliwość moderacji, ale to pod warunkiem, że płacimy za korzystanie z concept board.
Możemy też niezależnie od tego, czy płacimy czy nie, skorzystać z chatu, który jest oparty na chacie google.
Natomiast praca z concept board polega przede wszystkim na rysowaniu i pisaniu na tablicy, umieszczaniu na niej różnego rodzaju informacji.
Tutaj, jeśli chodzi o rysowanie, mamy do dyspozycji kilka dosyć podobnych narzędzi grubszy, cieńszy marker, podświetlacz.
Wybieramy rodzaj narzędzia.
Oprócz tego możemy też wykorzystać inne funkcje o przy okazji jak widać nasi współpracownicy również mogą zaznaczać różne fragmenty dokumentu i dostaniemy informację o tym w czasie rzeczywistym.
Właśnie osoba, z którą pracujemy zaznaczyła nagłówek who przy pomocy niebieskiego markera.
Nie jest to jednak jedyna opcja.
Komentarz będzie wskazywał jakiś konkretny element dokumentu.
Będziemy widzieli przy komentarzu kto wprowadził dany komentarz.
Będziemy widzieli jego treść i wprowadźmy teraz treść jakiegoś komentarza, a będziemy też widzieli kiedy dany komentarz został wprowadzony.
Inni użytkownicy mogą odpowiadać na ten komentarz klikając na reply przycisk, który znajduje się bezpośrednio pod komentarzem.
Można też zaznaczać komentarze jako zadania.
Możemy teraz zaznaczyć ten komentarz jako zadanie klikając na ikonkę znajdującą się obok reply i klikając na przycisk zaznacz ten komentarz jako otwarte zadanie.
Możemy też zaznaczyć to zadanie klikając po raz drugi na tą samą ikonę.
Możemy zaznaczyć to zadanie jako zakończone.
Możemy też przydzielić to zadanie do konkretnej osoby, albo spowodować, że komentarz przestanie być zadaniem klikając na odpowiednie przyciski poza komentarzami.
Możemy też wykorzystać notatki, które są umieszczane na tablicy w formie żółtych karteczek podobnych do tych, które możemy na przykład przykleić na lodówce.
Co dalej, możemy skorzystać z narzędzi pozwalających na rysowanie kształtów.
Możemy na przykład narysować prostokąt.
Możemy rysować okręgi, linie jak również umieszczać tekst.
Tekst może być umieszczany na dwa sposoby.
Po pierwsze w specjalnej ramce, albo też jako nagłówek.
Nagłówki nie mają własnej ramki.
Mają trochę inne formatowanie.
Tak zarówno jeden jak i drugi rodzaj tekstu potrafią być bardzo przydatne.
Teraz, w momencie kiedy czujemy się zadowoleni, możemy kliknąć na ikonkę ze spinaczem i albo wyeksportować naszą tablicę jako pdf, albo też wyeksportować ją jako obrazek.
Możemy też usunąć elementy z naszej tablicy.
Nadszedł czas żebyśmy poważnie spojrzeli na ograniczenie numer dwa.
Ograniczenie numer dwa polega na tym, że ojciec dał matematykowi pewną wskazówkę.
Suma lat pierwszego, drugiego i trzeciego syna jest taka sama jak liczba okien w domu, który był obok miejsca ich spotkania.
Oczywiście trudność polega na tym, że nie widzimy tego domu.
Nie możemy policzyć liczby okien, ale wiemy również, że matematyk miał tą możliwość.
Podniósł głowę do góry, spojrzał na dom obok, którego stali, policzył liczbę okien i on ten numer znał.
Zróbmy wobec tego inną rzecz.
Dodajmy we wszystkich ośmiu możliwych rozwiązaniach lata pierwszego, drugiego, i trzeciego syna, i zobaczmy jakie liczby dostajemy.
Przechodzimy teraz do części czwartej.
Część czwarta omawia podstawowe konstrukcje instrukcji select.
Instrukcja select też jest poleceniem grupy dml, aczkolwiek ze względu na to, że jej omawianie będziemy kontynuowali w kolejnym wykładzie, postanowiłam ją tutaj oddzielić od tamtej części.
Instrukcja select jest poleceniem odczytywania danych zapisanych w bazie bez jakiejkolwiek ingerencji w ich zawartość i strukturę.
Instrukcja select określa z jakich tabel w bazie danych mają być sprowadzone dane, jakie warunki mają spełniać dane oraz w jakiej postaci mają pojawić się przed użytkownikiem.
Instrukcja select składa się z kilku części nazywanych klauzulami.
Składnia polecenia select jest następująca.
Selec, opcjonalne słowo distinct, tutaj następuje lista wyrażeń from, tutaj następuje lista tabel oraz opcjonalnie where.
Warunek klauzule select i from muszą pojawiać się w każdej instrukcj, select co najmniej raz.
Klauzula select definiuje dane, które mają zostać odczytane z bazy oraz sposób ich prezentacji.
Wyrażenia oddzielane są przecinkami.
Jeżeli nazwy kolumn pochodzących z różnych tabel powtarzają się, muszą zostać poprzedzone nazwą tabeli.
Nazwa tabeli kropka.
Nazwa kolumny klauzula from definiuje źródła, z których dane będą odczytywane.
Mogą nimi być tabele, widoki i inne instrukcje select.
Nazwy tabel widoków i instrukcji select ujętych w okrągłe nawiasy oddzielane są przecinkami.
Przykład instrukcji select.
Wypisz nazwiska, zarobki i stanowiska pracowników firmy select i name sale job from emp.
Obok pojawia nam się wynik danego zapytania.
Jeżeli chcą państwo przetestować oczywiście można każde z tych zapytań zadać.
W bazie danych wyniki, które podawane są tutaj są wynikami podawanymi z danych wpisanych domyślnie do skryptu demo bld.
W wykonaniu takiego polecenia zobaczymy wszystkie dane z tabeli emp.
W standardzie jest też polecenie table emp.
Jednak w oracleu takie polecenie nie działa.
Wyrażenie może zawierać napisy, liczby oraz wyrażenia arytmetyczne.
W skład wyrażeń mogą wchodzić nazwy kolumn.
W wyrażeniach można używać operatorów arytmetycznych plus, minus, razy, podzielić, operatora konkatenacji.
Operator konkatenacji jest zależny od serwera.
W oracleu są to dwie pionowe kreski.
Operator konkatenacji to inaczej operator łączenia napisów.
Możemy też w wyrażeniach używać funkcji wbudowanych jak również funkcji napisanych przez użytkownika.
W wyrażeniach można stosować nawiasy.
Możemy wstawić stały tekst.
Stały tekst w języku sql nazywa się literałem.
Połączyć go z danymi odczytanymi z tabeli.
Cały ten tekst nazwisko, dwukropek, spacja, ujmujemy w apostrofy.
Znak konkatencji czyli w oracleu dwie pionowe kreski i tutaj wypisujemy pole z tabeli name from emp w wyniku otrzymujemy to, co zostało przedstawione na slajdzie.
Oczywiście w oryginale wyjdzie nam to czternaście wierszy.
Tyle ile było w tabeli emp.
Ze względu na to, że jest to raczej oczywiste pozwoliłam sobie skrócić nieco wynik.
Identyfikatory mogą być proste.
Mamy tutaj zarówno spację jak i dwukropek jest to ujęte cudzysłowem.
Jeżeli baza nie byłaby zainstalowana w języku polskim również słowo typu dąb musielibyśmy napisać w cudzysłowiu.
W identyfikatorze ograniczonym mogą występować spacje, które są niedozwolone.
W identyfikatorze prostym alias może zostać poprzedzony słowem s przewidzianym przez standart języka, aczkolwiek jest to słowo dopuszczalne, ale niewymagane w większości implementacji.
W poprzednim przykładzie, który był prezentowany, gdzie wyświetlaliśmy literał nazwisko dwukropek spacja w połączeniu z nazwiskiem pracownika aż się prosiło nadać temu polu literał.
W przeciwnym przypadku bowiem nazwa wyświetlonej kolumny no była taka jak nasz skonkatenowany napis, dlatego też możemy tu właśnie nadać alians.
Kolejny ważny problem to pseudowartość null w wyrażeniach.
Używając w wyrażeniach nazw kolumn niewymaganych musimy być szczególnie ostrożni.
Proszę zobaczyć następujący przykład i wynik.
Mamy tu zapytanie select select i select name, które ma alias pracownik select dwanaście razy sell plus com z aliasem roczne zarobki.
Przy czym tutaj wypisujemy potencjalnie oczywiście roczną pensję danego pracownika from emp wynik jest taki jak widać na slajdzie.
Wszyscy pracownicy, którzy w polu com mają null nie mają podanych rocznych zarobków, czyli w tej kolumnie roczne zarobki również mamy null.
Jeśli jakąkolwiek wartość przemnożymy przez null też otrzymamy null.
Dzielenie przez null jest to też null.
Wbrew pozorom nie występuje tutaj błąd dzielenia przez zero.
W tym celu używa się funkcji wbudowanej którą można znaleźć na każdym serwerze.
Natomiast oczywiście na każdym z serwerów ta funkcja będzie nazwana inaczej.
Zastosowaliśmy funkcję nvl.
Jako pierwszy argument jest pole com, które potencjalnie może zawierać wartość pustą.
Jako drugi argument zero, co oznacza, że jeżeli w polu com była wartość pusta zostanie ona podmieniona na zero i to zero zostanie dodane do tej dwanaście razy sale.
Natomiast jeżeli w polu com była jakakolwiek inna wartość to oczywiście do dwanaście razy sale zostanie dodana ta wartość we wszystkich przykładach niejawnie.
Zakładam, że w polu sale nie ma wartości pustej.
Oczywiście ten sam problem dotyczyłby również pola sale.
To nie jest tak, że pole com jest uprzywilejowane.
Po prostu założyłam, że w polu sale nie ma wartości pustej.
Aczkolwiek warto sobie zdawać sprawę, że w skrypcie takich więzów spójności nie ma.
Warto również omówić klauzulę distinct która daje nam eliminację powtórzeń.
Widzieliśmy w składni polecenia select.
Po słowie kluczowym select możemy podać distinct.
Jeżeli takie distinct podamy, wyeliminujemy powtarzające się wiersze na wybieranym wektorze czyli jeżeli chcielibyśmy wypisać bez powtórzeń stanowiska pracy w firmie piszemy select distinc job from emp.
Wówczas jako odpowiedź na to zapytanie dostaniemy wzajemnie różne stanowiska pracy.
Mamy tu stanowisko urzędnik, sprzedawca, prezydent, manager i analityk.
Gdybyśmy nie użyli słowa kluczowego distinct powtórzenia nie zostaną wyeliminowane automatycznie z wyników zapytania.
W związku z tym, jeżeli mieliśmy w tabeli czternaście wierszy tutaj dostalibyśmy czternaście wartości w polu job przy czym te wartości powtarzałyby się.
Jest kilku urzędników, kilku sprzedawców, kilku managerów, kilku analityków
Trzeci pirat dostaje zero, nic.
W każdym razie pierwszy, najsilniejszy pirat przedstawia konkretną i kompletną propozycję podziału stu sztuk złota.
Po takiej propozycji odbywa się głosowanie.
Piraci, którzy popierają ten podział głosują za.
Piraci, którzy nie popierają głosują przeciw.
W momencie kiedy propozycja dostaje pięćdziesiąt procent głosów poparcia jest akceptowana.
Podział zostanie dokonany.
Proszę zwrócić uwagę też, że pirat, który rzuca propozycję, głosuje tak samo czyli mamy dziesięć głosów.
Pięćdziesiąt procent wystarcza, żeby propozycja została zaakceptowana.
W tym filmie chciałem pokazać ci kilka przykładów augmented reality czyli rzeczywistości wzbogaconej.
Jednak zanim do tych przykładów przejdziemy powiem kilka słów czym jest rzeczywistość wzbogacona.
Najprościej rzecz ujmując jest to metoda łączenia obiektów otoczenia naszego środowiska z obiektami, które są generowane przez komputer i w odpowiedni sposób w tym otoczeniu wkomponowywane.
Dla przykładu mam tutaj za sobą baner łamigłówki naromada.
W tym przykładzie jest to akurat wykład i proszę zwrócić uwagę, że ja mogę tym tabletem ruszać.
Mogę zmieniać jego położenie, oddalać, przybliżać.
Natomiast cały czas ten obiekt jest zawieszony w tym miejscu i nie zmienia swego położenia tak, więc mamy wrażenie, że faktycznie ten obiekt znajduje się w tej lokalizacji.
Oczywiście może sobie wyobrazić, że niekoniecznie to musi być film.
To może być obiekt trzy d.
To może być gra.
To może być jakaś galeria obrazów.
To może nawet być strona internetowa, albo jakiś interfejs z przyciskami, które coś robią, kiedy ich użyjemy
Popatrzmy teraz w jaki sposób definiujemy interfejs użytkownika dla aplikacji w systemie bonita.
Interfejs użytkownika możemy definiować dla aktywności typu human task.
Z reguły w tym interfejsie wprowadzamy lub wyświetlamy informacje związane ze zmiennymi opisującymi stan naszego procesu.
Tu korzystamy z jednego z wcześniejszych przykładów, w którym mamy zdefiniowane dwie zmienne.
Decyzja typu bulil i wybrany kolor będący listą trzech możliwych kolorów.
Mamy jedną aktywność podjęcie decyzji, dla której chcielibyśmy stworzyć formularz, który umożliwi nam wpisanie tych dwóch informacji.
Wybieramy więc tą aktywność.
Klikamy na zakładkę aplication i w menu page flow dodajemy nowy formularz przy pomocy przycisku add.
Wyświetla nam się okienko definiowania formularza.
Możemy nazwać ten formularz.
Domyślnie jest nazwany tak samo jak aktywność.
Możemy podać jego opis i możemy wskazać, które zmienne procesu chcemy wykorzystać na tym formularzu.
Tu od razu dostajemy informację jak system sugeruje, żeby te elementy były wyświetlone.
Możemy wybrać wszystkie, żadne lub część z naszych zmiennych procesu i następnie kliknąć finish.
Zostaniemy zabrani do widoku edycji dialogu.
To, co widzimy tutaj to poszczególne elementy naszego dialogu, które możemy teraz edytować.
Robimy to dokładnie tak samo jak w wypadku elementów wykresu czyli wybieramy jakiś element i edytujemy jego nazwę.
Mimo to cały czas budzi pewne emocje dla osób które tej zagadki nie znają.
Proszę sobie wyobrazić, że mamy dwa miasta.
Nazwijmy te miastami miastem a i miastem be, które są położone w jakiejś odległości od siebie.
Mamy drogę, która prowadzi z jednego miasta do drugiego.
Wyobraźmy też sobie, że mamy samochód.
Wracamy z prędkością sześćdziesięciu kilometrów na godzinę.
Jeszcze raz chciałem to podsumować.
Wsiadamy do samochodu.
W tym momencie zaczyna się nasza podróż.
W tym momencie zaczynamy liczyć czas.
Jedziemy ze stałą prędkością czterdziestu kilometrów na godzinę.
W momencie kiedy pojawiamy się w mieście be zawracamy natychmiast i wracamy do miasta a też ze stałą prędkością ale ciut szybszą sześćdziesiąt kilometrów na godzinę.
Pytanie jest następujące.
Jaka była średnia prędkość na całej trasie.
Etykietę pokazywaną na przycisku.
Zmieniamy go z submit na zatwierdź.
Tu proszę zwrócić uwagę, że powinniśmy wyedtyować nie nazwę czyli name, a label czyli etykietę.
Name jest wewnętrznie wykorzystywanym w systemie identyfikatorem tego przycisku.
Nie chcemy w tym mieszać.
Natomiast label jest to wyświetlana etykieta.
Możemy wyedytować tutaj też opis.
Submit jednak wygląda na dobry pomysł.
Nie chcemy jednak tego robić.
Poprawmy pozostałe elementy.
Zmieńmy etykietę dla wyboru kolorów.
żeby miał możliwość wprowadzenia notatki.
Natomiast dobrze, żeby nie mógł podejmować za kierownika decyzji co do przyjęcia lub odrzucenia tego wniosku.
Tak więc będziemy mieli te trzy elementy.
Zmieńmy im ponownie etykiety na bardziej czytelne czyli początek urlopu, koniec urlopu.
Zmieńmy oczywiście też etykietę przycisku niech nazywa się ona na przykład prześlij i zastanówmy się jeszcze nad jednym elementem.
To znaczy warto byłoby wyświetlić tutaj początek i koniec urlopu, ale nie chcemy aby nasi pracownicy w dziale kadr mogli zmieniać te daty.
Wejdźmy wobec tego do zakładki general, do menu options i ustawmy dla początku i dla końca urlopu read only na włączony.
To zapewni nam, że te informacje zostaną wyświetlone.
Natomiast pracownik nie będzie mógł ich wyedytować.
Pracownik działu kadr będzie mógł wyedtować tylko i wyłącznie swoje uwagi.
Wygenerujmy teraz odpowiedni dialog dla kierownika
, który ma wagę tylko osiem, ale wartość jest szesnaście.
Widzimy, że to nowe rozwiązanie nie będzie lepsze od wcześniej uzyskanego rozwiązania czyli też dokonujemy nawrotu.
Rozważamy przedmiot numer sześć, ale nie możemy go wziąć, bo suma wag byłaby trzydzieści sześć.
Rozważamy przedmiot numer siedem i tak możemy wziąć przedmiot numer siedem.
Proszę zwrócić uwagę, że suma wag będzie trzydzieści dwa.
Natomiast wartość dwadzieścia pięć, dwadzieścia jeden i dwadzieścia dwa da nam liczbę sześćdziesiąt osiem.
Mamy dużo lepsze rozwiązanie, ale może jeszcze uda nam się to poprawić.
Dokonujemy większego nawrotu.
Rozpatrzyliśmy już wszystkie możliwości kiedy wzięliśmy jednostkę przedmioty jeden i dwa.
Może było błędem wzięcie przedmiotu numer dwa.
Może trzeba było wziąć przedmiot jeden i trzy.
Proszę zwrócić uwagę, że powtarzamy dokładnie ten sam proces, co w problemie ośmiu królówek.
Cały klucz do znalezienia ostatecznego optymalnego rozwiązania sprowadza się do systematycznego przeszukania z nawrotami.
Widzimy w tej chwili ekran powitalny systemu bonita bpm.
Jest to darmowy system pozwalający nam na projektowanie i symulowanie procesów pracy oraz budowę aplikacji internetowych w oparciu o te systemy.
Aby zacząć pracę z systemem, powinniśmy stworzyć nowy diagram procesu biznesowego.
W tym celu klikamy na przycisk new diagram widoczny na ekranie powitalnym lub też wybieramy odpowiednią opcję z menu aplikacji.
Po kliknięciu widzimy główny ekran roboczy systemu.
Podzielony jest on na cztery główne części.
W prawym górnym rogu mamy główny obszar roboczy, w którym będziemy projektować nasz diagram.
Tu będziemy umieszczać różne elementy procesu biznesowego i łączyć je ze sobą.
W lewym górnym rogu widzimy paletę zawierającą różne elementy, które mogą znaleźć się na naszych diagramach.
Jest to przydatne, jeśli nasz diagram jest większy.
Wreszcie w prawym dolnym rogu mamy obszar, w którym możemy ustawiać własności różnych elementów naszego diagramu.
Część druga modelowanie hierarchii danych oraz modelowanie zmienności danych w czasie.
Związek tego rodzaju nazywa się związkiem kategorii lub hierarchią encji.
Umożliwia on reprezentowanie dziedziczenia właściwości od encji ogólnej, nadencji do encji szczegółowych podencji.
W przykładzie, który pokażemy na kolejnych slajdach encja osoba jest nadencją, a encje student, wykładowca i administracja podencjami.
Osoba może być studentem, pracownikiem dydaktycznym czyli wykładowcą lub pracownikiem administracji szkolnej.
Cechy wspólne osób grupuje się w encji osoba, a cechy charakterystyczne dla odpowiedniej grupy osób w jednej z podencji.
Przykład rozwiązujący omówione przed chwilą zagadnienie przedstawia kolejny slajd.
Wśród atrybutów nadencji mógłby pojawić się atrybut nazywany wyróżnikiem kategorii decydujący o zaliczeniu osoby do jednej z podenecji.
W naszym przykładzie taki atrybut nie występuje.
Z resztą nie jest on konieczny na diagramie.
Te narzędzia, a w zasadzie ikony symbolizujące narzędzia zostały pokazane na slajdzie.
Związek kategorii można zastąpić zbiorem związków jednojednoznacznych pomiędzy nadencją i podencjami.
Na wykładzie drugim omówiliśmy trzy sposoby reprezentowania związków jednojednoznacznych w bazie danych, które mogą zastosowane do reprezentowania hierarchii.
Są to osobne tabele dla nadencji i podencji z rozdzieleniem atrybutów.
Osobne tabele dla podencji zawierające komplet atrybutów i jedna wspólna tabela zawierająca komplet atrybutów przy generowaniu do bazy danych.
Wszystkie atrybuty, wszystkie encje wchodzące w skład układu nadencja, podencje są identyfikowane tym samym atrybutem klucza głównego.
To samo przenosi się do tabel.
Jednym z powtarzających się wzorców modelowania danych są ich hierarchie.
Rozważmy na przykład hierarchiczną strukturę organizacyjną firmy.
Model pokazany na slajdzie, aczkolwiek formalnie poprawny ma dwie istotne wady.
Struktury podległości w wojsku wymuszą tworzenie dużej liczby encji i w efekcie tabel w bazie danych.
Ponadto jest całkowicie pozbawiony elastyczności .
Jakakolwiek zmiana struktury firmy wymusza zmianę koncepcji opisującej ją bazę danych.
Model, na którym pokazano strukturę firmy, a może nawet wielu firm składa się w naszym przykładzie z czterech encji.
Encja firma stanowi korzeń tego modelu i kolejno połączone związkami jeden do wiele.
Encje oddział, zakład, pracownia.
Można by sobie wyobrazić jeszcze większe rozdrobnienie struktury takiej firmy wymuszające dopisanie do modelu kolejnych encji.
Alternatywną reprezentację takiego modelu stanowi schemat, w którym wszystkie jednostki organizacyjne są modelowane za pomocą jednej encji.
Powiązanie do encji nadrzędnej realizowane jest przez pętlę wokół jednostki organizacyjnej czyli związek rekurencyjny.
W takim przypadku nie jest konieczne dodawanie lub usuwanie jakichkolwiek encji, a cała zmiana sprowadza się do dodania lub usunięcia rekordów w tabeli.
Zwróćmy uwagę, że związek rekurencyjny dla hierarchii musi być opcjonalny, aby móc zakończyć przechodzenie hierarchii na najwyższej jednostce organizacyjnej nazywanej korzeniem hierarchii.
Na pokazanym na slajdzie, diagramie jest to encja typ używanie tabel, w które przekształcane są encje słownikowe.
Daje w efekcie znacznie lepszą kontrolę nad danymi przechowywanymi w bazie niż pozostawienie użytkownikom pełnej dowolności w ich wprowadzaniu.
Kolejnym problemem przed którym często staje projektant schematu bazy danych jest uwzględnienie w modelu danych zmian wartości atrybutów w czasie.
W przedstawionym tutaj modelu przechowywanie danych historycznych jest niemożliwe.
Każda nowo wprowadzana wartość stanowisko, zarobki musi nadpisać wartość już w bazie istniejącą.
Każda nowo wprowadzana wartość stanowisko zarobki musi nadpisać wartość poprzednią zapisaną dotychczas w bazie.
Metoda zastosowana w celu rozwiązania tego problemu jest podobna do metody rozłożenia związku niejednoznacznego poprzez wprowadzenie encji asocjacyjnej.
Tutaj dodajemy encję temporalną, której zadaniem jest reprezentowanie zmian w czasie dotyczących, albo wartości atrybutów, albo związków z inną encją.
W tym celu wprowadzimy nowe encje zależne zarobki, historia do reprezentowania zmian zarobków oraz stanowisko historia do reprezentowania zmian w piastowanych stanowiskach.
Wprowadzimy także do obu nowych encji atrybut data od, reprezentujący czas, w którym zaszło odpowiednie zdarzenie czyli rozpoczął się nowy stan.
Atrybut ten wejdzie w skład atrybutów klucza głównego.
W następnym kroku rozwiążemy problem wprowadzenia historii przypisania pracowników do katedr w uczelni wynikający ze związku pomiędzy encjami wykładowca i katedra.
W tym celu wprowadzimy kolejną nową encję zależną o nazwie zatrudnienie.
Historia, której rolą jest reprezentowanie zmian przypisań wykładowcy do katedry.
Wprowadzimy także do nowej encji atrybut data od reprezentujący czas, w którym zaszło nowe przypisanie katedry.
Atrybut ten umieszczamy także w kluczu głównym.
Zależność związek pomiędzy wykładowcami, a ich zatrudnieniem jest zależnością wiele do wiele.
Zależność związek pomiędzy wykładowcami, a ich zatrudnieniem jest oczywiście zależnością wiele do wiele.
Opisaliśmy w ten sposób zmiany w czasie wartości atrybutów i związków.
Zachodzi pytanie czy jest sens mówić o zmienności instancji encji.
Taką zmianę moglibyśmy interpretować jako zastąpienie jednej instancji przez inną czyli usunięcie jej i wstawienie nowej.
Być może z przeniesieniem wartości pewnych atrybutów.
W szczególnym przypadku może tu chodzić tylko o usunięcie instancji encji, ale z pozostawieniem jej w historii instancji encji.
Niski koszt przechowywania informacji na dyskach wskazuje na to, że nie opłaca się usuwać informacji historycznych z tego względu, że czasami potrzebne są choćby do tworzenia różnych statystyk.
Inne rozwiązanie problemu mogłoby polegać na przeniesieniu informacji o usuwanych obiektach do osobnych encji stanowiących pewnego rodzaju historyczne archiwum bazy danych.
Szczególnie przy dużych rozmiarach zbiorów instancji encji takie rozwiązanie jest wskazane ze względu na efektywność operacji wyszukiwania w bazie danych.
Na tym kończymy drugą część wykładu, w którym przedstawione zostały sposoby modelowania kategorii hierarchii oraz zjawisk zmiennych w czasie
Był wykorzystywany w różnym stopniu.
Powiedzmy były momenty kiedy pracowało zero lub jeden kierowca.
Były momenty kiedy pracowało ich między dwóch, a trzech.
Możemy dostać informację na temat wykorzystania kierowców przez każdą z instancji procesu.
Każda z nich wykorzystywała jednego.
Możemy dostać informację na temat ponoszonych przez nas kosztów.
Założenie tutaj jest takie, że koszt wliczamy w momencie kiedy dany zasób pracuje w naszym procesie.
Możemy dostać informację na temat również średniego zużycia danego zasobu.
Tak, widzimy tutaj, że w żadnym momencie kierowca nie był wykorzystywany bardziej niż w siedemdziesięciu procentach.
Dokładnie takie same informacje dostajemy na temat wszystkich zasobów.
Tu na przykład możemy zobaczyć, że znacznie bardziej intensywnie od kierowcy wykorzystywany był spedytor, a ciężarówka była wykorzystywana raczej umiarkowanie
Jest to jednak obowiązkowe.
Możemy zmienić sobie rzeczy takie jak pozycja, etykiety i inne tego typu elementy.
Wróćmy jednak do edycji decyzji.
Tutaj zmienne typu bulil zazwyczaj są reprezentowane przy pomocy check booksa.
Jeśli jest zaznaczony to jest prawda.
Jeśli nie jest zaznaczony to jest fałsz, ale możemy zmienić typ pola na jeden z wielu innych dostępnych.
To już zależy od naszych indywidualnych preferencji.
W momencie kiedy skończymy edytować ten dialog możemy zamknąć widok, w którym jest on pokazany.
Jeśli czujemy taką potrzebę możemy też dodawać dodatkowe elementy do tego dialogu wybierając je z palety po lewej.
Zamknijmy więc dialog.
W tej chwili mamy zdefiniowany interfejs użytkownika dla naszego elementu.
Warto pamiętać jeszcze o jednym.
Domyślnie na początku projektu, przepraszam, na początku wykonywania procesu biznesowego system wyświetli dialog, w którym można wprowadzić wartości wszystkich jego zmiennych.
Zazwyczaj jest to kiepski pomysł.
Można to wyłączyć wybierając proces biznesowy i w zakładce aplication, w menu page flow zamiast page flow wybrać skip.
Tak jak widzimy to tutaj, co pominie ten dialog
Następnym problemem, na który chciałem zerknąć tutaj jest słynny problem plecakowy czasem też zwany problemem złodzieja.
Tutaj na tablicy wypisałem, wymieniłem siedem przedmiotów.
Przedmiot numer jeden, numer dwa, numer trzy, numer cztery.
Proszę też zwrócić uwagę, że każdy przedmiot ma jakąś wagę i każdy przedmiot ma jakąś wartość.
Przedmiot pierwszy waży dwanaście powiedzmy kilogramów, ma wartość dwadzieścia pięć czy to w złotych monetach, czy w dolarach, czy w złotówkach, wszystko jedno.
Pytanie pojawia się następujące.
Jest to problem optymalizacyjny.
Jakie przedmioty możemy wybrać tak, żeby uzyskać jak największą wartość zabranych przedmiotów.
Możemy najpierw wykonać zadanie step dwa potem step trzy możemy najpierw wykonać zadanie step trzy potem step dwa możemy.
Jeśli pozwolą nam na to zasoby wykonać je równolegle tak długo, jak długo na koniec wszystkie zadania będą wykonane.
Bramka paralel nie wymaga żadnych warunków na wychodzących z niej przepływach.
Wręcz nie możemy wprowadzić takich warunków w systemie.
Zawsze idziemy wszystkimi dostępnymi ścieżkami.
Musimy określić dla przepływów wychodzących z tej bramki jaki warunek powoduje pójście daną ścieżką i te warunki muszą się wzajemnie wykluczać czyli nie możemy mieć warunków.
Możemy, jeśli jeszcze tego nie robiliśmy, kliknąć sign up using google ewentualnie jeśli już kiedyś korzystaliśmy z tej aplikacji kliknąć po prostu log in.
Wybrać konto google przy pomocy, którego chcemy się zalogować i zostaniemy zabrani do głównego ekranu google gdzie możemy tworzyć nowe organizacje.
Przepraszam podajemy emaila osoby, do którego chcemy zaprosić do współpracy zostanie ona automatycznie dodana do członków organizacji.
Możemy ją teraz przesunąć do jednej z trzech pozycji limited acces, contributing members, albo owners, od której będą zależały uprawnienia tej osoby w naszej organizacji.
Pod nazwą każdej organizacji będziemy widzieć listę i następnie możemy zacząć tworzyć nową mapę myśli klikając na przycisk plus po prawej stronie nazwy naszej organizacji.
Zobaczymy teraz ekran edycji mapy myśli.
Tu możemy zaprosić konkretną osobę do współpracy przy edycji tej mapy myśli również podając jej adres emailowy.
Możemy oczywiście po dodaniu tej osoby również zmieniać jej uprawnienia czyli możemy przesunąć ją writers mogących edytować do readers, którzy mogą tylko i wyłącznie ją oglądać.
Edycja mapy myśli jest tutaj stosunkowo nieskomplikowana.
Po kliknięciu enter zobaczymy stworzony temat.
Teraz po lewej i prawej stronie naszego tematu są przyciski plus, które pozwalają nam na dodanie rozgałęzień.
Klikamy na taki plus.
Podajemy nazwę naszego rozgałęzienia.
Przy tym rozgałęzieniu będą kolejne plusy pozwalające nam na tworzenie dalszych gałęzi takiej mapy myśli i za każdym razem możemy podawać tekst, który ma zostać wprowadzony.
Możemy przesuwać całą mapę myśli.
Możemy też przesuwać jej poszczególne elementy tak, żeby zwiększyć czytelność tworzonej grafiki.
Możemy również zarządzać kolorami klikając na gałąź.
Możemy zmienić kolor danej gałęzi, a klikając na jakiś element znajdujący się niżej w hierarchii.
Zmienimy tylko i wyłącznie kolor tego elementu.
Kolejne dodawane przez nas elementy mapy myśli będą widoczne na żywo zarówno dla nas jak i dla innych osób, które będą edytowały tą mapę myśli w tym samym czasie.
W momencie kiedy inna osoba zabierze się za edycję naszej mapy myśli zobaczymy to po pierwsze w prawym górnym rogu.
Wreszcie możemy obejrzeć historię edycji naszej mapy myśli.
Działa to bardzo podobnie do historii edycji w wypadku standardowych narzędzi google drive.
Klikając na ikonkę z ludzikiem w prawym górnym rogu możemy również skorzystać z chatu, który również działa praktycznie identycznie jak w wypadku google drive.
Wreszcie możemy wrócić do głównego menu google klikając na ikonkę qoogle w lewym górnym rogu.
Możemy również zarządzać tym z kim dzielimy daną mapę myśli klikając na odpowiednią ikonę po prawej stronie od nazwy tej mapy.
Zagadka polega na czymś takim.
Mamy małżeństwo pan i pani kowalska, którzy zaprosili cztery inne pary małżeńskie na obiad do swojego mieszkania.
Proszę zwrócić uwagę, że mówimy o dziesięciu osobach.
Pan i pani kowalska plus cztery zaproszone pary.
Osiem zaproszonych osób razem z gospodarzami.
Proszę sobie wyobrazić, że wszyscy przyszli o tym samym czasie i zaczyna się ceremonia powitań.
Niektóre osoby podchodzą do siebie i wymieniają uścisk dłoni.
Tu musimy to bardzo dobrze zrozumieć i bardzo dobrze zdefiniować ten proces przyjmując następujące założenia, czy robiąc następujące obserwacje.
Pierwsza rzecz jest taka, że nikt nie powtarza uścisku dłoni z tą samą osobą.
Jeżeli osoba a podeszła i przywitała się z osobą be to zrobiła to tylko raz.
Nie robi tego po raz drugi
Widać wyraźnie, że w pierwszym przypadku trzydzieści sześć, jeden i jeden suma tych trzech liczb daje trzydzieści osiem.
Bardzo łatwo policzymy sobie te sumy dla trzeciego, czwartego aż do ósmego rozwiązania
.Wróćmy teraz do naszego przykładu z wypełnieniem wniosku urlopowego.
Nasz wniosek urlopowy ma związane ze sobą cztery elementy, nie chcielibyśmy ich wprowadzać wszystkich w pierwszym kroku procesu biznesowego.
W związku z czym wyłączmy ten domyślny dialog i teraz zajmijmy się naszymi poszczególnymi aktywnościami.
Pierwszą będzie wypełnienie wniosku urlopowego.
W tej aktywności na pewno chcemy, aby użytkownik mógł wprowadzić datę od i datę do, lepiej natomiast by nie mógł podjąć decyzji, ani nie mógł wpisać notatki działu kadr.
Wyłączmy więc tamte elementy i wygenerujmy dialog.
Wypadałoby stworzyć bardziej czytelne etykiety dla obu wprowadzanych tutaj danych, nazwijmy je początek urlopu i koniec urlopu.
Tu w zasadzie jest to wszystko, co chcielibyśmy w tej chwili tutaj zrobić.
W przyszłości może dobrze byłoby zapewnić, że początek urlopu i koniec urlopu wypadają w tym roku, że koniec urlopu jest po początku urlopu i inne tego typu rzeczy.
Wymaga to jednak dodatkowego programowania.
Na razie więc nie będziemy się tym zajmować. Następną aktywnością wymagającą interakcji jest sprawdzenie grafiku urlopów.
Tutaj chcielibyśmy, aby dział kadr zobaczył początkową i końcową datę urlopu.
Problem jest bardzo trudny do rozwiązania.
Problem zdecydowanie trzeba uprościć, żeby uprościć nasze rozumowanie, żeby dokonać jakiejś obserwacji, żeby dokonać jakiegoś rozumowania.
Przypuśćmy, że upraszczamy ten problem w następujący sposób.
Proszę zwrócić uwagę, że cały czas jest to sytuacja stabilna.
Nie ma żadnych podstaw do dokonania dedukcji.
Nie musi popełniać samobójstwa.
Jeszcze raz sytuacja jest stabilna.
Niemniej jednak po przylocie przybysza z kosmosu i po usłyszeniu stwierdzenia, widzę w tłumie kogoś z niebieskim okiem, widzę w tłumie kogoś z brązowym okiem.
Kosmita z niebieskim okiem z całą pewnością otrzymuje pewność, że jest kosmitą z niebieskim okiem.
On po prostu widzi brązowe oczy dookoła dziewięćdziesięciu dziewięciu innych kosmitów.
Ma brązowe oczy w tym momencie on otrzymuje potwierdzenie, że on ma niebieskie oko.
Następnego ranka występuje przed tłum i popełnia samobójstwo.
Występują krok naprzód i popełniają samobójstwo.
Cała cywilizacja ginie.
Spróbujmy teraz cały czas zatrzymać się przy tym uproszczeniu, ale zrobić krok w kierunku oryginalnego sformułowania tego problemu.
Cały czas mamy sytuację stabilną przed przybyciem przybysza z kosmosu.
Wszystko jest stabilne.
Przybysz przylatuje i mówi: widzę w tłumie jedno niebieskie, przynajmniej 1 niebieskie oko, widzę w tłumie przynajmniej jedno brązowe oko.
Pewna informacja została przekazana i proszę teraz sobie wyobrazić, że jesteśmy tym kosmitą z niebieskim okiem.
Ja jestem kosmitą z niebieskim okiem.
Ale co się dzieje następnego ranka?
Ten jedyny nie występuje naprzód przed tłum i nie popełnia samobójstwa.
Ale tego nie zrobił, co oznacza, że ja muszę mieć też niebieskie oko.
W momencie jak to zrozumiemy, cała zagadka jest niesłychanie prosta.
Wszystko, po prostu to samo rozumowanie się powtarza, wszystko się tylko przesuwa o kolejny dzień.
Jeżeli ja jestem jednym z trzech kosmitów o niebieskim oku, to ja widzę tylko dwóch.
Patrzę na tych dwóch kosmitów i czekam na pierwszy ranek i na drugi ranek.
Drugiego ranka ta para kosmitów wystąpi naprzód i popełni samobójstwo.
Jeśli tego nie zrobi, ja też wiem, że jestem trzecim kosmitą o niebieskim oku i trzeciego ranka cała nasza trójka występuje popełniając samobójstwo.
Mija kolejny ranek czwarty.
Po prostu te samobójstwa by zaczynały się ciut później - siódmego czy ósmego dnia.
To jst pierwsza obserwacja.
Druga obserwacja jest taka, że problem jest bardzo trudny do rozwiązania
Przyjrzyjmy się teraz temu w jaki sposób w BPMN i w systemie Bonita BPM przypisujemy wykonawców do poszczególnych czynności.
Wykonawcy są przypisywani zazwyczaj do tak zwanych lejns, czyli po polsku torów.
Każdy tor odpowiada jednemu możliwemu wykonawcy procesu.
Może być to konkretna osoba.
Może być to dowolna osoba zajmująca jakieś stanowisko, albo pełniąca określoną rolę w organizacji.
To jest bardzo ważne pytanie oczywiście ze względów organizacyjnych.
Ile gier, ile meczy zostanie zorganizowanych dla uściślenia uwagi rozumiem, że państwo mają podstawowe wyczucie na czym polega turniej tenisowy.
Dwóch graczy się spotyka wyznaczonych w jakiś sposób, jakaś drabinka meczy i tak dalej.
Grają ze sobą mecz.
Przegrywający odpada wygrywający przechodzi do następnej rundy no i tak dalej.
Nie wydłuża się ze względu na to, że szacowany i maksymalny czas jest większy od zero procent.
Nie wykorzystujemy w niej żadnych danych.
Wykorzystujemy natomiast jeden zasób, w tym wypadku jest to jeden shiper, czyli spedytor, który jest wykorzystywany przez cały czas trwania zadania.
Moglibyśmy dodać tutaj dodatkowe zasoby korzystając z przycisku add, moglibyśmy wyedytować zapotrzebowanie na shipera korzystając z edit, albo usunąć go korzystając z remove.
Również nie wykorzystuje żadnych danych, natomiast wykorzystuje jednego kierowcę i jedną ciężarówkę.
Tak, czyli mamy tutaj wykorzystanie aktora, ale mamy też wykorzystanie jakiegoś zasobu, który bezpośrednio sam aktorem nie jest.
Tutaj wszystko zależy od tego jak jakie bramki stosujemy, jak również od tego jak wygląda nasz proces.
Następny typ aktywności to abstrakt task, to jest aktywność, która nie ma jeszcze przypisanego do siebie żadnego typu.
Nie wiemy jeszcze czy będzie ona wykonywana przez system, czy będzie wykonywana przez człowieka, natomiast wiemy, że będzie musiała być wykonana.
Kolejny typ aktywności to script task.
Jest bardzo podobny w swojej idei do service task.
Również zakłada zero interakcji z użytkownikiem.
Natomiast pozwala nam na uruchomienie skryptu napisanego przez programistę i wstawionego do systemu.
Aby ustawić własności aktywności powinniśmy kliknąć na wybraną aktywność i następnie przystąpić do edycji tych własności.
Cały obszar jest podzielony na cztery zakładki z własnościami aktywności oraz zakładkę validation status zawierającą różnego rodzaju informacje.
Proszę zwrócić uwagę, że jeśli mamy tylko dwóch piratów, już problem został uproszczony.
Pirat numer jeden i pirat numer dwa pirat - silniejszy pirat, słabszy i pirat pierwszy składa jaką propozycję.
Wobec tego możemy się tylko skoncentrować na tym, jaka ta propozycja powinna wyglądać, żeby jak najwięcej sztuk złota przypadło pierwszemu piratowi.
W tym momencie myślę, że odpowiedź jest trywialna.
Znajdujemy się teraz w menu administracyjnym readmind.
Trzeba podać login, imię, nazwisko, email, preferencje językowe.
Możemy też ich usuwać, możemy zarządzać też grupami.
Edytując rolę możemy określić uprawnienia użytkownika do praktycznie rzecz biorąc wszystkich istotnych funkcjonalności systemu.
Możemy też powiedzieć, czy dany element ma być wyświetlany na tak zwanej round mapie projektu, która zawiera informacje o najważniejszych zadaniach do zrealizowania w najbliższym czasie.
workflow pozwala na zarządzanie procesami pracy.
Możemy np. chcieć dodać nowe pole do opisu projektu.
Możemy sobie coś przyjąć, że odległość między miastami a i be, powiedzmy jest sto dwadzieścia kilometrów, albo dwieście czterdzieści, albo jakąś inną liczbę.
W trzeciej części wykładu omówimy modelowanie zbiorów wartości w modelu relacyjnym, w modelu obiektowo relacyjnym, który nie jest omawiany w ramach tego wykładu.
Można również modelować związki zmienne w czasie.
Sposoby te zostaną omówione w kontekście baz relacyjno obiektowych.
Kolekcja jest modelem zbioru wartości.
Oprócz przynależności elementu do zbioru rozważa się dodatkowe właściwości: ustawienie elementów zbioru w ciąg oraz wielokrotne wystąpienia tego samego elementu zbioru.
Na slajdach pokażemy teraz przykłady tych trzech wymienionych poprzednio rozwiązań.
Przykłady będą opierały się na trzech encjach: osoba, grupa oraz przynależność, która to encja opisuje przynależność osoby do różnych grup.
Slajd numer jeden: zbiór - grupa w ramach pojedynczej grupy, osoby nie są uporządkowane i nie powtarzają się atrybuty, id osoby i id grupy tworzą klucz główny dla podanego przykładu.
Studenci mogą należeć do wielu kół, czyli kolekcji.
Kolejność tej przynależności nie jest w żaden sposób istotna.
Drugi kolejka, czyli lista w ramach kolejki.
Osoby są uporządkowane, odpowiada za to wartość atrybutu pozycja.
W jednej kolejce ta sama osoba może wystąpić wielokrotnie na różnych pozycjach, natomiast na jednej pozycji może wystąpić tylko jedna osoba.
Gdybyśmy chcieli zapewnić, że w kolejce każda osoba może się pojawić co najwyżej jeden raz należałoby określić jednoznaczny indeks na parze atrybutów id kolejki i id osoby.
Przykładem kolejki może być harmonogram referatów wygłaszanych na seminariach katedr i wreszcie zapisy, czyli wielozbiór w ramach pojedynczego zestawu zapisów, czyli wielozbioru.
Jedna osoba może mieć więcej niż jedno wystąpienie.
Uzyskujemy to przez wprowadzenie atrybutu wystąpienie do klucza głównego encji wpis/
Kolejność wpisów jest nieistotna w zastosowaniach.
W encji wpis znalazłaby się prawdopodobnie dodatkowa informacja reprezentująca treść wpisu.
Przykładem wielozbioru może być lista cytowań prac naukowych.
Dzien dobry państwu nazywam się Krzysztof Matejewski i jestem pracownikiem katedry baz danych Polsko Japońskiej Wyższej Szkoły Technik Komputerowych.
Mam przyjemność przedstawić państwu pierwszy wykład z cyklu wykładów Relacyjne Bazy Danych.
Wykład ten przeznaczony jest dla studentów pierwszego roku studiów inżynierskich, kierunku informatyka w PJWSTK.
Wykład powstał w oparciu o materiały profesora Leszka Banachowskiego.
Zagadnienia w nim poruszane możecie państwo znaleźć również w podręczniku Relacyjne Bazy Danych Wykłady i Ćwiczenia.
Podręcznik ten został wydany przez wydawnictwo PJWSTK.
W pierwszym wykładzie omówione zostaną podstawowe zagadnienia baz danych.
Zapoznamy słuchaczy z pojęciem baza danych.
Dokonamy krótkiego przeglądu modeli danych oraz szczegółowo omówimy koncepcję modelu relacyjnego najbardziej rozpowszechnionego dziś modelu danych używanego w bazach danych.
Krótkie opisy modeli danych powstały w oparciu o hasła Wikipedii.
Tak każdy tak zdefiniowany pracownik będzie przekładał się na przyszłego użytkownika systemu.
Każdy dział, czyli grupa, każda rola może być wykorzystana przy definiowanu aktorów przypisywanych do poszczególnych swimlejnów lub też bezpośrednio do konkretnych zadań.
Jeśli dokładnie spojrzymy na ten problem jeszcze raz, widzimy tą pewną repetycję pewnych elementów.
Pierwszy mecz, drugi mecz, trzeci mecz - coś się powtarza, coś się kręci w kółko.
Czy jest coś w tym problemie?
Czy możemy zauważyć pewną własność, pewną liczbę, jakąś charakterystykę, która się nie zmienia?
Dwóch uczestników gra mecz, co tak naprawdę się dzieje, jaki jest wynik pojedynczego meczu?
Wynik jest taki, że jeden uczestnik przegrywający odpada z turnieju.
Ile, ilu graczy, ilu uczestników pozostaje w turnieju?
Jasne jest, że po pierwszym meczu liczba uczestników, którzy cały czas są w grze jest o jeden mniejsza.
Odpadł tylko przegrywający pierwszego meczu.
Gramy drugi mecz mecz, ktoś przegrywa i osoba, która przegrywa odpada z turnieju.
Wobec tego myślę, że wiemy już o co tutaj chodzi.
Wiemy już, co jest niezmiennikiem.
Tutaj spodziewaliśmy się około ośmiu godzin, ale bardzo często wyglądało to trochę inaczej.
Maksymalnie zajmowało to nawet czterdzieści kilka godzin, co nie jest najlepszym wynikiem.
Możemy zobaczyć jak wyglądały czasy oczekiwania na rozpoczęcie tej aktywności, czyli mieliśmy zadanie, które było gotowe do realizacji, ale nie miał kto go zrealizować.
Wreszcie dostajemy też informację na temat zasobów.
Każdy proces ma jednego specjalnie oznaczonego aktora, nazywającego się initiator.
Jest to aktor oznaczony tutaj specjalną ikonką.
Jest to ten aktor, który rozpoczyna proces biznesowy.
Możemy zmienić aktora, który będzie rozpoczynał ten proces, klikając na innego i ustawiając go jako rozpoczynającego proces, klikając na przycik set as initiator.
Możemy również dodać dodatkowe filtry pozwalające lepiej wskazać osobę, która ma wykonywać określone czynności.
W drugiej części tego wykładu opowiem o zapytaniach sumarycznych oraz o klauzulach grup by i having.
Dane z jednej lub więcej tabel mogą zostać podsumowane przy użyciu jednej z funkcji sumarycznych inaczej zwanych podsumowującymi lub agregującymi.
Argumentem funkcji sumarycznych może być wyrażenie odpowiedniego typu lub distinct wyrażenia.
Zobaczmy przykład zastosowania funkcji sumarycznej podaj liczbę pracowników firmy.
Count od distinct kolumna zwraca liczbę wzajemnie różnych wierszy o niepustej wartości w kolumnie.
W tym zestawieniu uwzględniłam również wzajemnie różne stanowiska, czyli policzyłam distinct job.
Kolejny przykład zastosowania funkcji sumarycznych, statystyka zarobków pracowników pracujących w dziale sprzedaży.
W tym zapytaniu widzimy, że bez problemu możemy łączyć funkcje sumaryczne z inner join.
W tym zapytaniu widzimy też, że wartości funkcji sumarycznych możemy odejmować, możemy również wykonywać na nich pozostałe operacje arytmetyczne.
Stosując funkcje sumaryczne musimy pamiętać, że pseudowartości null nie są brane pod uwagę przy obliczaniu wartości funkcji.
Jeśli wykonamy następujące zapytanie, wówczas średnia prowizja zostanie policzona tylko dla tych osób, które w polu prowizja mają niepustą wartość.
W naszych danych cztery osoby miały niepustą prowizję, w tym prowizja jednej z tych osób wynosiła zero, suma wynosiła dwa dwieście dwa dwieście na cztery pięćset pięćdziesiąt.
Oczywiście bez problemu możemy policzyć średnią prowizję uwzględniając wszystkich pracowników firmy.
Wystarczy zastosować znaną nam już funkcję nvl i napisać zapytanie.
Pytanie teraz tylko, która z tych odpowiedzi jest poprawną odpowiedzią na pytanie.
Oblicz średnią prowizję pracowników firmy.
Tak jak chce szef lub inna osoba zlecająca zrobienie tego raportu.
Z wartością null jest jeszcze jeden problem.
No bo skoro sprzedawcom należy się prowizja, więc ten człowiek, który jej nie ma, no prawdopodobnie ma po prostu zero, więc w tym momencie pytanie jest jak najbardziej słuszne.
Którą z wersji powinniśmy zastosować?
Jest to bardzo duży problem w przypadku raportów analitycznych.
Przejdźmy teraz do kolejnej klauzuli w języku sql, czyli do klauzuli grup by.
W dotychczasowych przykładach otrzymywaliśmy zawsze jeden wiersz będący wynikiem działania funkcji sumarycznych dla całej tabeli.
Oczywiście mógł być tam jakiś warunek wstawiony, ale nadal był to jeden wiersz w odpowiedzi.
Tutaj przydaje się bardzo operacja grupowania wyników.
W sql służy do tego klauzula group by.
Zapytanie z klauzulą group by wygląda następująco: wiele wyrażeń oddzielonych przecinkiem i opcjonalnie having warunek, czyli warunek dla grupy.
Zobaczmy przykład dla każdego działu z osobna: oblicz liczbę pracowników i sumaryczne zarobki.
Oczywiście jasne jest, że w tej sytuacji musimy złączyć tabelę emp z tabelą dept.
Spójrzmy na zapytanie.
Spójrzmy na zaznaczone fragmenty po select, czyli na liście select chcieliśmy wyświetlić nazwę działu.
W tym momencie po group by również ta nazwa działu musiała zostać wypisana.
Jest to związane z ograniczeniami dla klauzuli group by, które za chwilę omówię szerzej.
Grupowanie może odbywać się po kilku wyrażeniach.
Grupa rekordów tworzona jest dla każdego unikalnego zbioru wartości w wyrażeniach umieszczonych w klauzuli group by.
Umieśćmy teraz w systemie nowy plik.
W tym celu musimy kliknąc na apple files, wybrać z dialogu open file, plik do zaploudowania.
System zaplouduje go automatycznie, odświeży widok naszego folderu.
Widzimy tutaj podstawowe informacje o pliku, jego nazwę, kto stworzył ten plik.
Możemy spróbować otworzyć ten plik w przeglądarce.
W takim wypadku zazwyczaj przeglądarka po prostu pobierze nasz plik chyba, że jest w stanie obsłużyć ten konkretny format pliku.
Możemy też po prostu pobrać.
Możemy wyedytować własności tego pliku, jego fizyczną nazwę, wyświetlany tytuł, opis.
Możemy też uzupełnić informację o tagach.
Po kliknięciu save zostaną one zapisane.
Jak widać widok odświeży się tak, aby pokazać nasze nowe tagi.
Mamy trochę możliwości edycji, najczęściej i najprawdopodobniej będziemy wykorzystywać edycję offline.
Wtedy system pobierze dla nas edytowany plik i zaznaczy go jako aktualnie edytowany przez tego konkretnego użytkownika.
Nie możemy wtedy pobierać, inni użytkownicy nie mogą wtedy pobierać tego dokumentu do edycji.
Jeśli się rozmyślimy możemy zawsze anulować edycję.
W tym celu musimy wskazać plik, który ma zostać wgrany.
Powinniśmy powiedzieć czy plik został poddany niewielkim zmianom czy ważniejszym zmianom.
Dostałem dostaniemy informację kto ostatnio zmodyfikował ten plik i oczywiście poprzednia wersja pliku również będzie w systemie.
W tym celu musimy wybrać jeden z dostępnych w systemie workflow z widocznej tutaj listy typu dropdown.
Większość z dostępnych workflow są to workflow związane właśnie z recenzowaniem.
Możemy wykorzystać też coś, co nazywa się adhoc workflow.
Teraz powinniśmy w dialogu, który nam się pokazał podać jakąś wiadomość, która będzie wykonywała to zadanie.
Powinniśmy podać datę do kiedy powinno zostać wykonane, jego priorytet, wskazać wykonawcę spośród osób korzystających z tego systemu.
Tu widzimy pliki, które zostaną temu wykonawcy przekazane.
Możemy dodać albo usunąć pliki, możemy powiedzieć, że ta osoba powinna otrzymać powiadomienie emailem i rozpocząć workflow.
Teraz osoba, która ma dokonać tej recenzji dostanie odpowiednie powiadomienie emailowe, jak również będzie widziała to powiadomienie w obszarze my tasks dashboarda.
Możemy przesunąć ją tak, żeby diagram wyglądał troszkę ładniej, następnie rozpatrzenie wniosku jest czynnością realizowaną przez kierownika, także umieśćmy ją w odpowiednim lejnie.
Umieśćmy tutaj też naszą bramkę tak, żeby nieco zwiększyć czytelność diagramu.
Możemy teraz zająć się zdefiniowaniem aktorów, którzy będą przypisani do poszczególnych lejnów.
Spójrzmy teraz na repozytorium plików.
W allfresco jest ono zorganizowane w dość tradycyjny sposób, to znaczy podzielone na foldery.
Tu widzimy w tej chwili pięć folderów, które zostały stworzone przez system na własne potrzeby.
Możemy stworzyć własny folder klikając na przycisk new folder, podając nazwę tego folderu, ewentualnie jego alternatywną nazwę do wyświetlania i opis.
Klikając save tworzymy nowy folder.
Automatycznie odświeża się widok repozytorium.
Możemy go polubić.
Możemy skomentować ten folder.
Jeśli mamy taką potrzebę możemy pobrać całą zawartość tego folderu w formacie jako pojedynczy plik w formacie zip.
Możemy wyedytować jego własności, które przed chwilą ustawiliśmy tworząc ten folder.
Możemy też obejrzeć szczegółowe informacje związane z tym folderem.
Możemy również zająć się bardziej szczegółowym zarządzaniem tym folderem, to znaczy po pierwsze możemy zarządzać uprawnieniami, które są związane z tym folderem.
Klikając na manage permisions zobaczymy jak wygląda w tej chwili zestaw uprawnień przydzielonych poszczególnym użytkownikom.
W tej chwili wszyscy użytkownicy systemu mają dostęp do tego folderu w roli consumer, czyli osoby mogącej czytać zawarte w nim dokumenty.
Możemy w ten sposób dodać dowolną liczbę użytkowników, każdemu z nich przydzielić jego własny zestaw uprawnień, następnie kliknąć save aby zapamiętać te zmiany.
Możemy też zająć się zarządzaniem tak zwanymi aspektami.
Wreszcie możemy zająć się zarządzaniem regułami związanymi z tym folderem.
Reguły są to automatycznie wykonywane czynności.
Będą wykonane przez system w określonych sytuacjach.
Możemy tu stworzyć nowe reguły lub też połączyć się wykorzystać istniejące reguły zdefiniowane dla innych folderów.
Co my możemy tutaj zrobić?
Możemy też powiedzieć że jesteśmy zainteresowani sytuacją, kiedy jakieś kryteria z podanych przez nas nie są spełnione.
Tu podajemy kryteria w bardzo podobny sposób do punktu powyżej.
Możemy tu ewentualnie użyć jednego z szablonów takiego emaila, ale nie są dostępne szablony w języku polskim.
Przynajmniej niedomyślnie, także klikamy ok i możemy teraz zapisać tą regułę.
To nie jest specjalnie przydatne z wyjątkiem bardzo nielicznych sytuacji.
Po kliknięciu create widzimy, że została stworzona określona reguła.
Czego tak naprawdę potrzebujesz, żeby móc takie sceny oglądać, a może nawet i takie sceny tworzyć.
Pierwsza sprawa: potrzebujesz oczywiście jakiegoś urządzenia.
Może to być urządzenie w postaci tak jak tutaj trzymam w rękach, tabletu, może to być inne urządzenie mobilne takie jak chociażby smartfon.
Jeśli nie posiadasz takich urządzeń może to być po prostu komputer z kamerą internetową zainstalowaną w systemie operacyjnym.
Możesz też użyć takich oto właśnie specjalnych okularów do augmented reality, które to okulary mają z jednej strony wbudowane kamery z drugiej strony zaś wyświetlacze.
Kiedy założymy takie okulary praktycznie widzimy dokładnie to samo, co pokazuje się na ekranie komputera i dzięki temu te nasze doznania mogą być jeszcze jeszcze większe, jeszcze lepsze.
Kiedy mamy już tą część sprzętową za sobą bardzo ważne jest to, żeby mieć zainstalowane odpowiednie oprogramowanie.
W przypadku komputera stacjonarnego czy laptopa najczęściej jest to jakaś strona internetowa, która uruchomi kamerę i która pozwoli działać w tym w tej w tej scenie aer.
Jeśli mamy urządzenie mobilne to może być oczywiście aplikacja, którą pobieramy ze sklepu internetowego z aplikacjami i wiele tych aplikacji jest darmowych.
Jeśli to już mamy, następna sprawa, którą potrzebujemy to jakiś marker.
Markery są różnych typów, to może być marker taki bardzo podstawowy jak widzisz za mną w kwadraciku odpowiednim.
To takie pierwsze markery, które można było najczęściej spotkać w scenach aer.
Może być to też marker foto realistyczny czy graficzny, bogaty w kolory, bogaty w szczegóły.
To są już nowszego typu właśnie markery znaczniki są one potrzebne po to, aby kamera z tych urządzeń rozpoznała.
Niestety odpowiedź, którą uzyskałem nie jest poprawna.
Proszę zwrócić uwagę jeszcze raz, że odpowiedzią może być jedna z pięciu możliwości.
Być może, że gdzieś się pomyliliśmy w tym procesie.
Dokonajmy więc pewnego uproszczenia.
Załóżmy, że liczba kamyczków w stosie była dziesięć tylko, a nie sto i może wszystko będzie dużo łatwiej.
Jeżeli jest dziesięć kamyków, ile powinniśmy kamyków wyjąć z naszego stosu, aby zagwarantować sobie wygraną?
Jeszcze tu mamy pięć i tu mamy pięć, to chyba mamy dziesięć.
W tym momencie wszystko pięknie się zgadza.
Proszę zwrócić uwagę, że graczem wygrywającym jest ten, który usunie ostatnie kamyki ze stołu.
Powiedziałbym w beznadziejnej sytuacji.
Przyjrzyjmy się teraz naszemu procesowi rozpatrywania wniosku urlopowego i uzupełnijmy ten proces o brakujące w nim przepływy oraz bramki decyzyjne.
Patrząc na opis procesu widzimy, że większość tego procesu przebiega dosyć liniowo.
To znaczy zaczynamy od zadania startowego i start jeden i przechodzimy z tego zadania do wypełnienia wniosku urlopowego.
Dodajmy więc odpowiedni przepływ korzystając z menu kontekstowego następnie z wypełnienia wniosku urlopowego przechodzimy do przekazania wniosku do kierownika.
Dział kadr po sprawdzeniu grafiku urlopów przekazuje wszystko do kierownika.
W związku z tym dodajmy bramkę.
Powinna być to bramka typu exclusive, czyli bramka, w której podejmujemy jedną z dwóch lub więcej możliwych decyzji.
I pytanie jest następujące, z resztą zanim zadam pytanie trzeba zdefiniować kto wygrywa grę.
Wiemy, co możemy zrobić w jednym ruchu.
Wygrywa grę ten gracz, który w ostatnim swoim ruchu usunie pozostałe kamyczki tak, że stół jest pusty.
Concept board jest tablicą interaktywną pozwalającą nam na pracę z różnego rodzaju dokumentami wspólnie z innymi użytkownikami.
Możemy zobaczyć ile mamy w tej chwili dostępnego miejsca na naszej tablicy.
Tutaj tą ilość wolnego miejsca możemy zwiększać sobie i możemy zobaczyć też w menu contacts, jakie osoby w tej chwili mamy zaproszone do współpracy z nami.
Przy różnych naszych tablicach w tej chwili jak widać lista naszych znajomych jest pusta.
Zaprośmy więc kogoś.
Aby zaprosić użytkownika musimy podać jego imię albo nazwisko albo ksywkę oraz adres emailowy i kliknąć invite.
Zostanie wysłane do niego zaproszenie emailem.
Użytkownik w tym emailu dostanie link, na który będzie musiał kliknąć, aby to zaproszenie zaakceptować.
W momencie kiedy zostanie ono przez niego zaakceptowane, o tak jak teraz, zmieni się sposób jego wyświetlania.
Zobaczmy między innymi zdjęcie, które wprowadził dla swojego pofilu google.
Możemy teraz wybrać z naszej listy jakie osoby zostaną przez nas zaproszone do współpracy nad naszą nową tablicą.
Klikamy w tym celu, aby zaznaczyć takich użytkowników i następnie możemy kliknąć start a new board with selected contacts, żeby zacząć tworzyć nową tablicę.
Teraz pracę z concept board możemy zacząć albo z całkowicie pustą tablicą albo też wprowadzając jakiś dokument, który będzie służył jako tło na naszej tablicy.
Zaczynamy pracę z pustą tablicą wybierając opcję start a new scrible diagram a.
Ten dokument zostanie zaimportowany w całości, w związku z czym dłuższe dokumenty będą się importować zwykle trochę dłużej.
Teraz możemy z tym dokumentem pracować na wiele różnych sposobów.
Warto jednak zobaczyć na początek, co widzimy w interfejsie użytkownika na dole na listwie.
Widzimy przede wszystkim osoby, które w tej chwili są zalogowane do systemu.
Obecnie zalogowani jesteśmy tylko my.
Możemy sprawdzić i na wszelki wypadek zaprosić jeszcze raz naszych współpracowników.
W tym celu klikamy na przycisk share na górze, wybieramy osoby, które mają być zaproszone.
Klikamy send invitation możemy też udostępnić naszą tablicę publicznie klikając share publicity, wtedy będzie ona dostępna pod widocznym tutaj share board link.
Linkiem możemy ten link opublikować na facebooku, na twitterze albo na google plusie.
Klikamy send invititaion, decydujemy się zaprosić tylko osoby, które są nam znane.
Możemy tutaj skorzystać z dodatkowych funkcji takich jak chat video albo możliwość moderacji, ale to pod warunkiem, że płacimy za korzystanie z concept board.
Możemy też niezależnie od tego czy płacimy czy nie skorzystać z chatu, który jest oparty na chacie google.
Natomiast praca z concept board polega przede wszystkim na rysowaniu i pisaniu na tablicy umieszczaniu na niej różnego rodzaju informacji.
Tutaj jeśli chodzi o rysowanie mamy do dyspozycji kilka dosyć podobnych narzędzi: grubszy, cieńszy marker, podświetlacz.
Oprócz tego możemy też wykorzystać inne funkcje.
Właśnie osoba, z którą pracujemy zaznaczyła nagłówek who przy pomocy niebieskiego markera.
Markery nie jest to jednak jedyna opcja.
Komentarz będzie wskazywał jakiś konkretny element dokumentu.
Inni użytkownicy mogą odpowiadać na ten komentarz klikając na reply, przycisk, który znajduje się bezpośrednio pod komentarzem.
Można też zaznaczać komentarze jako zadania, o jak widać jeden z naszych współpracowników odpowiedział na komentarz.
Możemy teraz zaznaczyć ten komentarz jako zadanie, klikając na ikonkę znajdującą się obok reply i klikając na przycisk zaznacz ten komentarz jako otwarte zadanie.
Możemy też zaznaczyć to zadanie klikając po raz drugi na tą samą ikonę.
Możemy zaznaczyć to zadanie jako zakończone, możemy też przydzielić to zadanie do konkretnej osoby albo spowodować, że komentarz przestanie być zadaniem, klikając na odpowiednie przyciski.
Co dalej możemy skorzystać z narzędzi pozwalających na rysowanie kształtów.
Tekst może być umieszczany na dwa sposoby.
Po pierwsze w specjalnej ramce albo też jako nagłówek.
Nagłówki nie mają własnej ramki, mają trochę inne formatowanie, tak zarówno jeden jak i drugi rodzaj tekstu potrafią być bardzo przydatne.
Te funkcje pozwalają nam na w miarę wygodne w miarę wygodną pracę z naszymi dokumentami.
Teraz w momencie, kiedy czujemy się zadowoleni możemy kliknąć na ikonkę ze spinaczem i albo wyeksportować naszą tablicę jako pdf albo też wyeksportować ją jako obrazek.
Możemy teraz pójść troszeczkę bardziej w kierunku zabawy.
Zobaczmy aplikację, która jest dedykowana dzieciom.
Tutaj mamy taki marker z jakimiś dziurami.
Kiedy zobaczę tą aplikację z wykorzystaniem właśnie urządzenia mobilnego tak jak w tym przypadku nagle okazuje się, że ten marker pełni rolę gry.
No to jest bardziej zabawne zastosowanie rzeczywistości rozszerzonej, ale też znajduje szerokie zastosowanie.
Przepływ z poinformowaniem pracownika o decyzji mamy jako domyślny, drugi przepływ jest wykonywany tylko w niektórych sytuacjach.
Te aktywności nie będą nam potrzebne.
Możemy je całkiem spokojnie usunąć i przez przekazywać przepływ sterowania bezpośrednio między tymi aktywnościami, w których faktycznie jest coś do zrobienia.
Tak samo dział kadr nie musi przekazywać wniosku do kierownika.
Zadba o to nasz system informatyczny i możemy bezpośrednio po sprawdzeniu w grafiku urlopów przejść do aktywności rozpatrzenie wniosku.
W ten sposób nasz diagram staje się trochę czytelniejszy i nie zawiera zbędnych aktywności, które mogą być po prostu zrealizowane przez system.
Uruchommy teraz symulację procesu biznesowego.
W tym celu wchodzimy w pozycję menu similation i wybieramy opcję ram similation.
Pojawi nam się dialog, w którym powinniśmy określić, który z procesów chcemy zasymulować.
Tu mamy do dyspozycji dwa procesy: wersję podstawową i lekko zoptymalizowaną.
Powiedzmy, że zasymulujemy podstawową.
Powinniśmy wybrać również nasz loud profile, przy czym możemy wybrać jakiś istniejący.
Nie jest to jednak bardzo częsta sytuacja po ustawieniu wszystkiego klikamy run i czekamy na wyniki.
Wybrany kolor należał do listy możliwych kolorów.
W takim wypadku musimy wybrać typ danych tekst i możemy kliknąć na przycisk list of options po to, żeby zdefiniować sobie listę możliwych wartości jakie przyjmie ten kolor.
Musimy kliknąć list of options i teraz możemy zdefiniować tutaj nazwę takiej listy.
Możemy też je uporządkowywać klikając up, down albo usuwać klikając remove.
Możemy kliknąć finish.
Mamy w tej chwili zdefiniowane dwie zmienne w naszym procesie, jedna nazywa się decyzja, druga nazywa się wybrany kolor.
Jedna jest typu logicznego, druga listą wartości.
W wypadku aktywności typu human możemy również określić priorytet takiej aktywności, który będzie wykorzystywany przez system zarządzania procesami pracy, wykonujący tą aplikację.
Kolejna zakładka apperance pozwala nam na zdefiniowanie.
I teraz jedną z tych kategorii jest kategoria nazywająca się bonita, która zawiera różne informacje, różne obiekty dostarczające nam nam informacji związanych z działaniem systemu.
Powiększmy to okno.
Jedną z takich informacji jest obiekt nazywający się get process instance initiator.
To jest obiekt reprezentujący nam pracownika, który rozpoczął tą instancję procesu biznesowego.
Chcemy znak dolara powoduje rozpoczęcie kodu w języku growie.
Chcemy sprawdzić warunek czy decyzja jest pozytywna.
Jeśli decyzja jest pozytywna będziemy wysyłali jedną wersję komunikatu w przeciwnym wypadku wyślemy inną wersję komunikatu.
Tu w zasadzie wypadałoby poprawić decyzja pozytywna na decyzja negatywna, jeśli mamy wtedy wysłać twój wniosek został odrzucony, ten kod może niekoniecznie będzie 100% poprawny.
Najprawdopodobniej wypadałoby sprawdzić, czy będzie to odpowiednio działało, ale przejdźmy dalej.
Możemy teraz wprowadzić tutaj jeszcze dodatkowe informacje dotyczące nagłówka wysyłanej wiadomości i po kliknięciu finish mamy gotowy skonfigurowany wysłanie emaila do pracownika.
Pokażę ci teraz w jaki sposób możesz doświadczyć sceny aer używając urządzenia mobilnego.
Żeby to ćwiczenie wykonać będziesz potrzebował smartfonu bądź tabletu z systemem operacyjnym apple ios bądź google android.
Ja w tym przykładzie posługuję się urządzeniem typu ipad.
Jednak na urządzeniach systemu android cały ten proces odbywa się bardzo podobnie.
Pierwsze co będziesz musiał zrobić to wejść do sklepu z aplikacjami.
Aplikacja ta nazywa się Junaio.
Po krótkiej chwili powinieneś ją znaleźć.
Jest to pierwsza z wyświetlanych aplikacji.
Ja mam już ją zainstalowaną oczywiście.
Natomiast ty będziesz musiał tą aplikację teraz zainstalować.
Aplikacja jak widzisz - tak naprawdę większość przestrzeni interfejsu to jest obraz z kamery.
Kamera ta po prostu szuka znajdujące się w pobliżu markerów.
Ja już mam przygotowaną scenę, którą ty też możesz przetestować.
Najpierw wczytam swój kanał użytkownika, na który mam dla ciebie tą scenę wgraną.
W tym celu posłużę się tym kodem QR, który muszę zeskanować.
Skanowane tego kodu odbywa się poprzez naciśnięcie przycisku w prawym górnym rogu.
Ten dźwięk oznacza, że zostało to zeskanowane i wczytała się zawartość i teraz patrzę na zdjęcie.
Możesz sobie to zdjęcie wydrukować bądź możesz też oglądać to zdjęcie bezpośrednio z ekranu komputera.
Zajmijmy się teraz naszym procesem rozpatrywania wniosku urlopowego i uzupełnijmy go o odpowiednie informacje na temat aktorów w naszym systemie.
Mamy w tej chwili otwarty nasz wniosek.
Wiemy, że część czynności będzie wykonywana przez pracownika, ale potrzebujemy również odpowiednie lejny dla pozostałych wykonawców naszego procesu, czyli dla działu kadr oraz dla kierownika.
Możemy zdefiniować sobie te lejny.
Możemy spróbować je lekko zmniejszyć w tej chwili dla zwiększenia czytelności naszego diagramu i zajmijmy się teraz odpowiednim nazwaniem naszych lejnów.
Tak, zmieniamy nazwę lejna w zakładce general w menu lejn i stwórzmy lejna dla pracownika, dla kierownika i dla działu kadr.
W ten sposób wiemy kto będzie wykonywał czynności w poszczególnych lejnach i teraz tak wypełnienie wniosku urlopowego jest czynnością realizowaną przez pracownika.
Także ta czynność pozostaje w lejnie przypisanym do pracownika, ale sprawdzenie grafiku urlopów jest wykonywane przez dział kadr.
Także przesuńmy tą czynność do lejna działu kadr.
Mamy tutaj przykład połączenia nazwiska pracownika z zajmowanym przez niego stanowiskiem.
Łączymy taki napis osoba, konkatenacja i name, czyli wartość z pola i name operator konkatenacji.
Kolejna grupa operatorów to operatory porównań.
Operatory porównań, które mamy w języku sql zapisujemy jako mniejsze równe bądź wykrzyknik, równe mniejsze, mniejsze równe, większe oraz większe równe.
W oracle argumenty operatorów porównań muszą być wyrażeniami.
W standardzie mogą być listami wyrażeń tej samej długości.
Wówczas porównania odbywają się po składowych.
Operatory logiczne, o których już wspominaliśmy not and or z odpowiednimi priorytetami, jest jeszcze trzy operatory, które warto wspomnieć.
Z matematycznego punktu widzenia operator in jest operatorem należenia do zbioru.
Kolejnym operatorem jest operator between.
Operator zawierania między x between z and y.
Trzeba pamiętać, że ponieważ przedział jest domknięty musimy mieć nieostre nierówności.
XYZ i tak dalej musza być wyrażeniami.
W standardzie mogą być listami wyrażeń tej samej długości.
Ostatnim operatorem jest operator like.
W pierwszym przypadku zastępujemy frazę ski, czyli dowolną ilość znaków.
W tym przypadku są to trzy znaki.
Natomiast w drugim zastępujemy jeden znak i przykład zastosowania operatora like: wypisz dane pracowników, których nazwiska kończą się na th.
Oczywiście jak wszystkie dane tekstowe ujmujemy taki ciąg w apostrofy i pamiętamy o odpowiedniej wielkości liter zgodnej z wpisami do tabel.
Na koniec tej części wykładu omówię wybrane funkcje.
Funkcje konwertujące typy danych, oczywiście lista funkcji jest o wiele szersza.
Wersja, którą mam akurat dotyczy dziewięć i aczkolwiek są też już książki do dziesięć g do oraclee dziesięć g tam jest przedstawiona omówiona pełna lista funkcji.
To, co przedstawiam w tym wykładzie jest to jedynie drobny wycinek.
Funkcje konwertujące typy danych - jest tych funkcji o wiele więcej.
Są to funkcje to car, to date, to number, funkcja interpretująca null, funkcja nvl, którą już omawialiśmy.
Godne wspomnienia są funkcje bezargumentowe.
Jest to funkcja zwracająca datę bieżącą, czyli sys date oraz funkcja zwracająca zalogowanego użytkownika, czyli user.
Kolejne funkcje to funkcje operujące na tekście.
Funkcje dość standardowe lenf - funkcja, która zwraca liczbę znaków w wyrażeniu tekstowym.
W funkcji lenf w argumencie podajmy wyrażenie napisowe funkcja substr, czyli substring, w której na pierwszym argumencie podajemy wyrażenie napisowe, na drugim liczbę od, na trzecim liczbę znaków.
Funkcja ta zwraca liczbę znaków określoną w trzecim argumencie począwszy od znaku określonego w drugim argumencie, oczywiście w tekście podanym w pierwszym argumencie.
Funkcja replace, w której podajemy jako argument wyrażenie napisowe tekst poszukiwany i tekst zastępujący.
Funkcja ta wyszukuje i zamienia fragment tekstu.
Wszystkie argumenty mogą być wyrażeniami.
Funkcja revers, w której podajemy wyrażenie napisowe jest to funkcja, która odwraca dany tekst.
Funkcja trim - też podajemy wyrażenie napisowe, obcina spację z obu stron tekstu, aczkolwiek to jest najczęstsze użycie tej funkcji.
Natomiast tak na prawdę ta funkcja obcina również dowolny ciąg znaków podany na drugim argumencie.
Funkcja ta zwraca odpowiednią część daty z data jeden.
Funkcje operujące na liczbach.
Wybrałam tutaj jako przykłady funkcje round i funkcje trunk, którym w argumentach podajemy x.
Jest to liczba, którą będziemy w przypadku funkcji round zaokrąglali, w przypadku funkcji trunk obcinali i na drugim argumencie podaje się do ilu miejsc po przecinku.
Domyślnie jest to zero.
Na tym kończę wykład dotyczący wybierania danych z jednej tabeli, dotyczący podstaw instrukcji select i ogólnie dotyczący podstaw języka SQL.
Jakby tą satysfakcję użytkownika już poza jakby tym wyłącznie technicznym.
Oczywiście oba te komponenty są bardzo ważne, żeby bo bez części technicznej system nie będzie działał.
Natomiast bez części tej użytkowej, użytkownik nie będzie z takim systemem czuł więzi emocjonalnej.
No i system oczywiście nie będzie uznany za łatwy do nauki i obsługi.
Na tym slajdzie widać właśnie listę takich klasycznych technik projektowania użytkowego, które są stosowane w tym nurcie i które sobie za chwileczkę omówimy.
Na tym slajdzie są ułożone mniej więcej w takiej kolejności, w jakiej one są rzeczywiście stosowane.
To znaczy na etapie analizy biznesowej, analizy przedwdrożeniowej, stosuje się techniki obserwacyjne i techniki opisu kontekstu użytkownika.
Później przechodzimy do inżynierii wymagań, gdzie stosuje się metody warsztatowe i spotkania analityczne.
Teraz omówimy najważniejsze metody projektowania użytkowego projektowania UCD, które są tutaj stosowane.
W tym cyklu pierwsza grupa technik to są techniki obserwacyjne.
Jeżeli są to pracownicy, to oczywiście mają oni do wykonania jakieś zadania o charakterze proceduralnym, administracyjnym czy projektowym.
Uwzględnia się tutaj zarówno rodzaj wykonywanych zadań, ale ich także częstość, a także opis przepływu pracy, czy kto korzysta z wyników pracy danego stanowiska, gdzie te wyniki są przekazywane dalej.
Tutaj kluczowym terminem jest pojęcie kontekstu użytkowania, ponieważ kontekst użytkowania często nazywany także i środowiskiem użytkowania.
Na tym etapie informacje są pozyskiwane od użytkowników, od tych którzy będą z tego systemu w przyszłości korzystać.
Kontekst użytkowania systemu jest z reguły opisany kilkoma klasycznymi charakterystykami.
Pierwszą grupą charakterystyk są charakterystyki użytkownika.
Tutaj się definiuje jego wykształcenie, profil jego, no powiedzmy predyspozycje, ale również określa się cele, które użytkownik chce osiągnąć z pomocą systemu.
Inaczej oczywiście wygląda opis użytkownika w przypadku sytuacji, gdy korzysta z systemu w firmie.
Druga grupa charakterystyk to jest opis czy charakterystyki zadań roboczych.
Tutaj się oczywiście określa cechy procesu.
Tam proces w postaci mapy czy przepływów obiegu dokumentów.
Również się określa parametry jakościowe czy dane, które są przekształcane na kolejnych etapach pracy i schematy blokowe, diagramy interakcji, diagramy sekwencji.
To są te techniki, które tutaj są wykorzystywane po to, aby w sposób graficzny pokazać przebieg zadań roboczych i wykonywane przez użytkownika operacje.
Trzecia grupa charakterystyk to są charakterystyki środowiska pracy.
Także bierze się pod uwagę jako pewne ograniczenie czy charakterystyki, które muszą być uwzględnione i które stanowią też element tego kontekstu użytkowania, który jest punktem wyjścia do naszego projektu.
Taką unikalną cechę czy taką właśnie przewagę konkurencyjną łatwiej jest zdefiniować niż gdybyśmy takiego opisu kontekstu w ogóle nie posiadali.
Techniki obserwacyjne, które są w przypadku kontekstu użytkowania stosowane można tak podsumować zdaniem Nielsena, które brzmi spend the day with user spędź jeden cały roboczy dzień z użytkownikiem.
Również taka całodzienna wizja lokalna, całodzienna ta obserwacja w zasadzie uczestnicząca pozwala na zorientowanie się jakiego typu więzi społeczne czy organizacyjne w tej firmie występują.
Również jeżeli użytkownik w czasie pracy narzeka na istniejące rozwiązania informatyczne czy organizacyjne.
Te techniki obserwacyjne występują jako elemenent analizy biznesowej projektu, ponieważ jest analiza nie tyle finansowa, co analiza środowiska biznesowego i opis procesów biznesowych.
Jest to podejście etnograficzne.
Znajdujemy się w tej chwili na ekranie dashboardu administratora.
Ekran ten jest podzielony na kilka głównych części.
Widzimy oczywiście nazwę zalogowanego użytkownika, w tym wypadku administrator.
W tej chwili akurat ta część jest pusta.
Jest to świeża instalacja systemu.
Możemy następnie przejść do zarządzania repozytorium lub też do funkcji administracyjnych.
Funkcje administracyjne pozwalają nam na zarządzanie całym systemem.
Możemy przejść klikając tutaj more i teraz pierwszy pierwsza część funkcji administracyjnych to jest zarządzanie wyglądem aplikacji, możemy zmienić skórkę, możemy zmienić logo, które będzie wyświetlane.
Trash can to miejsce, w którym są umieszczane wszystkie usunięte dokumenty.
Administrator może je odzyskać lub też usunąć na stałe.
Channel manager pozwala nam zarządzać miejscami w mediach społecznościowych, w których będziemy publikować nasze elementy repozytoriów, jeśli będziemy mieli taką potrzebę.
Bardzo przydatną funkcją jest możliwość obejrzenia historii zmian w naszym dokumencie, aby obejrzeć taką historię musimy wejść w menu file i kliknąć w funkcję see revision history.
Ten kolor będzie odpowiadał kolorowi przypisanemu osobie, która dokonywała tych zmian.
Możemy wyłączyć pokazywanie zmian jak również możemy poprosić system o pokazywanie mniej szczegółowej listy rewizji.
Jest to przydatna funkcja, która potrafi oszczędzić bardzo dużo pracy.
Klikamy, przeciągamy stworzona przez nas bramka w tej chwili jest to bramka typu paralel.
Możemy również we własnościach zmienić typ bramki na inny.
Wszystkie zadania ze wszystkich równoległych ścieżek zostaną wykonane.
Na dzisiejszym wykładzie omówimy kolejne możliwości języka sql.
Wykład podzielony jest na cztery części.
Możemy użyć kilku zapytań połączonych ze sobą operatorami algebraicznymi.
Składnia jest następująca instrukcja select, operator, instrukcja select przy czym oepratorami są union oraz union all.
Sumowanie zbioru wyników, jeżeli użyjemy operatora union, powtórzenia zostaną wyeliminowane, jeżeli użyjemy operatora union all powtórzenia nie zostaną wyeliminowane.
Union odpowiada matematycznemu pojęciu sumy zbiorów, union all rozszerza to pojęcie do multizbiorów.
Kolejne operatory to intersect, czyli przecięcie zbioru wyników odpowiadające iloczynowi, czyli części wspólnej zbiorów oraz except, czyli różnica zborów wyników odpowiadająca matematycznemu pojęciu różnicy zbioru.
W Oracle zamiast except piszemy minus, aby zobrazować działania operatorów algebraicznych wypiszmy numery działów z tabeli dept oraz numery działów z tabeli emp.
Jak mówiłam powtórzenia są eliminowane.
Kolejne polecenie w tym momencie otrzymujemy zbiór wyników bez eliminacji powtórzeń.
Wybrane są tylko te działy, w których nikt nie pracuje.
Dwa ostatnie zapytania wykonujemy odpowiadając na pytania wypisz numery działów, w których w danej chwili jest zatrudniony co najmniej jeden pracownik.
Jest to zapytanie z operatorem intersect oraz wypisz numery działów, w których w danej chwili nie są zatrudnieni żadni pracownicy.
Jest to zapytanie z operatorem minus.
W tym przypadku nieco trudniej byłoby znaleźć logiczne uzasadnienie dla przykładów z union i union all, ale oczywiście te operatory również wykorzystywane są w praktyce w logicznych kontekstach.
Aby znaleźć takich pracowników napiszemy zapytanie.
Otrzymaliśmy wynik, w którym obok nazwisk pracowników nie pracujących w dziale dziesiątym nie ma gwiazdki, natomiast obok nazwisk pracowników pracujących w dziale dziesiątym jest gwiazdka.
Zobaczmy jeszcze na jednym przykładzie działanie operatora intersect.
Podaj stanowiska, na których pracuje przynajmniej jedna osoba w dziale dziesiątym i przynajmniej jedna osoba w dziale trzydziestym.
Oczywiście są to inne osoby.
Jest to jak najbardziej poprawna odpowiedź serwera na tak zadane zapytanie.
Jest to oczywiście niemożliwe, dlatego też w odpowiedzi uzyskaliśmy pusty zbiór wyników.
W dziale 10 nie ma żadnego sprzedawcy.
Na pewno nie powinien pojawić się w zbiorze wyników tego zapytania.
To zapytanie również nie jest odpowiedzą na zadane pytanie.
Musimy pamiętać, że liczba kolumn oraz typy danych odpowiednio muszą być takie same w obydwu instrukcjach select tych instrukcji select notabene może być więcej.
Klauzula order by może wystąpić tylko raz na końcu całego zapytania.
Jeśli zatem nadajemy aliasy to nadawajmy je w pierwszej instrukcji z tych aliasów będziemy korzystali.
Specyfiką relacyjnych baz danych jest to, że dane znajdują się w wielu tabelach często.
Aby wybrać potrzebne nam informacje będziemy musieli sięgnąć do więcej niż jednej tabeli.
Przydatność języka sql byłaby więc mocno ograniczona, gdybyśmy w jednym poleceniu select mogli wybrać dane tylko z jednej tabeli.
Oczywiście tak nie jest w jednym poleceniu select.
Możemy wybierać dane z wielu tabel używamy do tego złączeń.
Tabele możemy złączać stosując warunek złączeniowy po instrukcji where lub konstrukcję join w relacyjnym modelu danych.
Najczęściej występującym złączeniem tabel jest złączenie na podstawie naturalnych powiązań między wierszami tabel opartych na związku klucz obcy - klucz główny.
