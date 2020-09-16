Lisp mini programs.

## 1. A Lisp program that computes the series of sin and cos functions

A lisp program to compute the series for the sin(x) and cos(x) depending on the value of n. The function takes 2 arguments (x and n) and based on the value of n, calculates one of the following functions: 
<img width="480" alt="Q1" src="https://user-images.githubusercontent.com/46803937/93276662-2e27d300-f78e-11ea-95b9-90b9219f33d6.png">

Inbuilt functions were not used, expect for the predicate functions to check value type. It then prints an appropriate message for string and decimal values for n. Additionally, there's a limit for x when n is odd number.




## 2.  Iterative and recursive approaches to compute Pell numbers. 

In mathematics, the Pell numbers are an infinite sequence of integers, that comprises the denominators of
the closest rational approximation to the square root of 2. The sequence of approximations begins with

<img width="337" alt="Screen Shot 2020-09-15 at 8 06 45 PM" src="https://user-images.githubusercontent.com/46803937/93276949-038a4a00-f78f-11ea-89c6-a961d32ef633.png">
So the sequence of Pell numbers begin with 1, 2, 5, 12, 29,.... . The Pell numbers are defines as follow:
<img width="563" alt="Screen Shot 2020-09-15 at 8 07 06 PM" src="https://user-images.githubusercontent.com/46803937/93276961-0d13b200-f78f-11ea-8824-0bab52e24dd8.png">

This is a lisp program that computes the Pell numbers for an input argument n using:
a) An iterative approach
b) A recursive approach
For example pellnumbers (6) should return a list (0 1 2 5 12 29 70) 
so there's at least 2 test cases for each versions (a and b).



## 3. Lists and Backtracking
Considering the database below: 

family(person( john, cohen, date(17,may,1990), unemployed), person( lily, cohen, date(9,may,1990), unemployed),
[ ] ).
family(person( john, armstrong, date(7,may,1988), unemployed), person( lily, armstrong, date(29,may,1961), unemployed), [ ] ).
family(person( eric, baily, date(7,may,1963), works( bbc, 2200)), person( grace, baily, date(9,may,1965), works( ntu, 1000)), [person( louie, baily, date(25,may,1983), unemployed) ] ).
family(person( eric, baily, date(7,may,1963), works( acc, 21200)), person( grace, baily, date(9,may,1965), works( ntnu, 12000)), [person( louie, baily, date(25,may,1983), unemployed) ] ).
family(person( eric, fox, date(27,may,1970), works( bbc, 25200)), person( grace, fox, date(9,may,1971), works( ntbu, 13000)), [person( louie, fox, date(5,may,1993), unemployed) ] ).
family(person( tom, cohen, date(7,may,1960), works( bcd, 15200)), person( ann, cohen, date(29,may,1961), unemployed), [person( pat, cohen, date(5,may,1983), works( bcd, 15200)),
person( jim, cohen, date(5,may,1983), works( bcd, 15200)) ] ). family(person( bob, armstrong, date(12,oct,1977), works( ntnu, 12000)),
person( liz,armstrong, date(6,oct,1975), unemployed), [person( bob, armstrong, date(6,oct,1999), unemployed),
person( sam,armstrong, date(8,oct,1998), unemployed) ] ). family(person( tony, oliver, date(7,may,1960), works( bbc, 35200)),
person( anny, oliver, date(9,may,1961), unemployed), [person( patty, oliver, date(8,may,1984), unemployed),
person( jimey, oliver, date(5,may,1983), unemployed) ] ). family(person( jack, fox, date(27,may,1940), unemployed),
person( jane, fox, date(9,aug,1941), works( ntu, 13050)), [person( andy, fox, date(5,aug,1967), works( com, 12000)),
person( kai, fox, date(5,jul,1969), unemployed) ] ). husband(X) :- family( X, _, _).
wife(X) :- family( _, X, _).
child(X) :- family( _, _, Children), member(X, Children). exists(Persons) :- husband( Persons); wife( Persons); child( Persons). dateofbirth(person(_, _, Date, _), Date).
salary(person(_, _, _, works(_, S)), S).
salary(person(_, _, _, unemployed), 0).



1) A prolog rule totalIncome/2 to compute the total income of a family.
2) A prolog query to print total income of each family.
3) A prolog query to print family details of each family that has income per family member
less than 2000.
4) A prolog query to print family details of each family where children’s total income is more
than their parents.



## 4. Using Prolog for a Search Problem

Using Prolog for a Search Problem Assume, I am working with the following knowledge base:
family(person( john, cohen, date(17,may,1990), unemployed), person( lily, cohen, date(9,may,1990), unemployed),
[ ] ).
family(person( john, armstrong, date(7,may,1988), unemployed), person( lily, armstrong, date(29,may,1961), unemployed), [ ] ).
family(person( eric, baily, date(7,may,1963), works( bbc, 2200)), person( grace, baily, date(9,may,1965), works( ntu, 1000)), [person( louie, baily, date(25,may,1983), unemployed) ] ).
family(person( eric, baily, date(7,may,1963), works( acc, 21200)), person( grace, baily, date(9,may,1965), works( ntnu, 12000)), [person( louie, baily, date(25,may,1983), unemployed) ] ).
family(person( eric, fox, date(27,may,1970), works( bbc, 25200)), person( grace, fox, date(9,may,1971), works( ntbu, 13000)), [person( louie, fox, date(5,may,1993), unemployed) ] ).
family(person( tom, cohen, date(7,may,1960), works( bcd, 15200)), person( ann, cohen, date(29,may,1961), unemployed), [person( pat, cohen, date(5,may,1983), works( bcd, 15200)),
person( jim, cohen, date(5,may,1983), works( bcd, 15200)) ] ). family(person( bob, armstrong, date(12,oct,1977), works( ntnu, 12000)),
person( liz,armstrong, date(6,oct,1975), unemployed), [person( bob, armstrong, date(6,oct,1999), unemployed),
person( sam,armstrong, date(8,oct,1998), unemployed) ] ). family(person( tony, oliver, date(7,may,1960), works( bbc, 35200)),
person( anny, oliver, date(9,may,1961), unemployed), [person( patty, oliver, date(8,may,1984), unemployed),
person( jimey, oliver, date(5,may,1983), unemployed) ] ). family(person( jack, fox, date(27,may,1940), unemployed),
person( jane, fox, date(9,aug,1941), works( ntu, 13050)), [person( andy, fox, date(5,aug,1967), works( com, 12000)),
person( kai, fox, date(5,jul,1969), unemployed) ] ). husband(X) :- family( X, _, _).
wife(X) :- family( _, X, _).
child(X) :- family( _, _, Children), member(X, Children). exists(Persons) :- husband( Persons); wife( Persons); child( Persons). dateofbirth(person(_, _, Date, _), Date).
salary(person(_, _, _, works(_, S)), S).
salary(person(_, _, _, unemployed), 0).



Write the details of steps of search (unification, resolutions, and back tracking) and also the answer for each of the following queries. 
? exists(P), dateofbirth(P, date(_,_,Y)), Y<1963, salary(P, Salary), Salary<15000. 
? exists(P), dateofbirth(P,date(_,_,Y)), !, Y<1998, salary(P,Salary), Salary<20000.
? wife(person(GivenName, FamilyName, _, works(_,_))).
? child(X), dateofbirth(X, date(_,_,1983)).



## 5 Object oriented programming with Ruby 
Automated Readability Index (ARI) is used for testing readability in English text. The mathematical formula for calculating ARI in a text document is as follows:
𝐴𝑅𝐼 = 4.71 × (𝑐h𝑎𝑟𝑎𝑐𝑡𝑒𝑟𝑠/𝑤𝑜𝑟𝑑) + 0.5 × (𝑤𝑜𝑟𝑑𝑠/𝑠𝑒𝑛𝑡𝑒𝑛𝑐𝑒) − 21.43
Where:
𝑐h𝑎𝑟𝑎𝑐𝑡𝑒𝑟𝑠= ∑𝑙𝑒𝑡𝑡𝑒𝑟𝑠,𝑛𝑢𝑚𝑏𝑒𝑟𝑠𝑎𝑛𝑑𝑝𝑢𝑛𝑐𝑡𝑢𝑎𝑡𝑖𝑜𝑛 𝑤𝑜𝑟𝑑𝑠 = ∑ 𝑠𝑝𝑎𝑐𝑒𝑠
𝑠𝑒𝑛𝑡𝑒𝑛𝑐𝑒𝑠 = ∑ 𝑓𝑢𝑙𝑙 𝑠𝑡𝑜𝑝𝑠
The following table shows the educational grade level that corresponds to each ARI score:

<img width="210" alt="Screen Shot 2020-09-15 at 9 30 38 PM" src="https://user-images.githubusercontent.com/46803937/93281744-bad88e00-f79a-11ea-9326-ed114b90ab68.png">

This is a Ruby method that can read any document file, count number of characters, words, and sentences and then i applied the ARI formula to find out the grade level required for a person to read the opened document. For example, for the following “paragraph.txt” file:

After the Lord Stanley of Preston was appointed by Queen Victoria as Governor General of Canada on June 11, 1888, he and his family became highly enthusiastic about ice hockey. Stanley was first exposed to the game at Montreal's 1889 Winter Carnival, where he saw the Montreal Victorias play the Montreal Hockey Club. The Montreal Gazette reported that he "expressed his great delight with the game of hockey and the expertise of the players". During that time, organized ice hockey in Canada was still in its infancy and only Montreal and Ottawa had anything resembling leagues.

A Ruby method call: calcARI(“paragraph.txt”) outputs the following: 

Total # of characters: 474
Total # of words: 96 Total # of sentences: 4
Automated Readability Index: 13.8
Grade level: 18-24 (college student)





