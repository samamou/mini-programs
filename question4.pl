? exists(P), dateofbirth(P, date(_,_,Y)), Y<1963, salary(P, Salary), Salary<15000.

Unification exists (P) with exists(Persons) P=Persons Resolution husband(P)
unification husband(P) with husband(X) X=P resolution family(P,_,_)
unification family(P,_,_) with family(person( jack, fox, date(27,may,1940), unemployed), person( jane, fox, date(9,aug,1941), works( ntu, 13050)),[person( andy, fox,date(5,aug,1967), works( com, 12000)),person( kai, fox, date(5,jul,1969), unemployed) ] ).
P = person(jack, fox, date(27, may, 1940), unemployed), Salary = 0,
Y = 1940
P = person(lily, armstrong, date(29, may, 1961), unemployed), Salary = 0,
Y = 1961
P = person(ann, cohen, date(29, may, 1961), unemployed), Salary = 0,
Y = 1961
P = person(anny, oliver, date(9, may, 1961), unemployed), Salary = 0,
Y = 1961
P = person(jane, fox, date(9, aug, 1941), works(ntu, 13050)), Salary = 13050,
Y = 1941
False


? exists(P), dateofbirth(P,date(_,_,Y)), !, Y<1998, salary(P,Salary), Salary<20000.

Unification exists(P) with exists(Persons) P=Persons
Resolution husband(P) unification husband(P) with husband(X) X=P resolution family(P,_,_)
unification family(P,_,_) with family(person( john, cohen, date(17,may,1990), unemployed), person( lily, cohen, date(9,may,1990), unemployed), [ ] ).
P = person(john, cohen, date(17, may, 1990), unemployed), Salary = 0,
Y = 1990
No more searches after 1990 because of the cut


? wife(person(GivenName, FamilyName, _, works(_,_))).

unification wife(person(GivenName, FamilyName, _, works(_,_))) with wife(X) X= person(GivenName, FamilyName, _, works(_,_))
resolution family(_,person(GivenName, FamilyName, _, works(_,_)),_)
unification with family(person( eric, baily, date(7,may,1963), works( bbc, 2200)), person( grace, baily, date(9,may,1965), works( ntu, 1000)), [person( louie, baily, date(25,may,1983), unemployed) ] ). person(GivenName, FamilyName, _, works(_,_))=person( grace, baily, date(9,may,1965), works( ntu, 1000))
FamilyName = baily, GivenName = grace
FamilyName = baily, GivenName = grace
FamilyName = fox, GivenName = grace
FamilyName = fox, GivenName = jane

? child(X), dateofbirth(X, date(_,_,1983)).

Unification child(X) with Child(X) resolution family(_,_,Children)
Unification family(_,_,Children) with family(person( eric, baily, date(7,may,1963), works( bbc, 2200), person( grace, baily, date(9,may,1965), works( ntu, 1000)), [person( louie, baily, date(25,may,1983), unemployed) ] ). Children= [person( louie, baily, date(25,may,1983), unemployed)] member(X,Children) return true X= person( louie, baily, date(25,may,1983), unemployed) dateofbirth(person( louie, baily, date(25,may,1983), unemployed),date(_,_,1983)
X = person(louie, baily, date(25, may, 1983), unemployed)
X = person(louie, baily, date(25, may, 1983), unemployed)
X = person(pat, cohen, date(5, may, 1983), works(bcd, 15200))
X = person(jim, cohen, date(5, may, 1983), works(bcd, 15200))
X = person(jimey, oliver, date(5, may, 1983), unemployed)
False
