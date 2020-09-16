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


## 6. Object Oriented Programming with Ruby
In this question, there's an auto showroom inventory catalogue, my program should read a car listings file which contains all available inventory details where each line contains the following 11 listing features:
#km, type, transmission, stock#, Drivetrain, Status, Fuel Economy, car_maker, model, year, Trim,set_of_features
examples of listing lines as follows:
65101km,Sedan,Manual,18131A,FWD,Used,5.5L/100km,Toyota,camry,SE,{AC, Heated Seats, Heated Mirrors, Keyless Entry},2010
coupe,1100km,auto,RWD, Mercedec,CLK,LX ,18FO724A,2017,{AC, Heated Seats, Heated Mirrors, Keyless Entry, Power seats},6L/100km,Used
AWD,SUV,0km,auto,new,Honda,CRV,LE,19BF723A,8L/100km,2018,{Heated Seats, Heated Mirrors, Keyless Entry}
Note: order of listing features varies from one line to another as it was entered by employees not trained for proper data entry. Also, assume the following listing:

<img width="453" alt="Screen Shot 2020-09-15 at 10 23 48 PM" src="https://user-images.githubusercontent.com/46803937/93285137-283bed00-f7a2-11ea-8b7c-ad11b17a09ec.png">

Your program should have four methods as follows:
• convertListings2Catalougue: a method that:
  o reads the listings file line by line
  o correctly recognizes and extracts different listing features
  o instantiates appropriate objects of different classes and subclasses that you should define to hold the listing information for different car makers, their models and trim lines available in our listings. Any parent class should have properties that count the number of listings of that maker or that model along with other common behavior or properties. In the listings examples above, you can create an object of class (car_model) and store all the listing information in that class and also update the parent (car_maker) common class properties accordingly.
Note: The OOP design and choice of classes and subclasses is something that differs from one programmer to another and depends on the way you look at the problem.
• searchInventory: a search method that accepts a hash as its argument and based on the combination of hash key-value pairs will perform an advanced search for all vehicles in stock that matches the criteria. For example, searchInventory( {“car_maker” => ”Mercedes”}) should display all Mercedes vehicles available.
• Add2Inventory: a method that accepts a new listing as a single line of unordered listing features, add the line to the original listing file and add an appropriate object to the catalogue based on the listing features.
• saveCatalogue2File: a method that traverses all created catalogue objects and stores them to an output file alphabetically according to their maker name. each listing features will follow a strict fixed order as opposed to the original file random order. For example, the original three listings will look as follows in the output file:
Toyota,camry,SE,65101km,2010, Sedan, FWD, Manual, 18131A, Used,5.5L/100km, {AC, Heated Seats, Heated Mirrors, Keyless Entry}
Mercedec,CLK,LX, 1100km,2017,coupe, RWD, auto, 18FO724A, Used,6L/100km,{AC, Heated Seats, Heated Mirrors, Keyless Entry, Power seats}
Honda,CRV,LE,0km, 2018, SUV, AWD, auto, 19BF723A, new,8L/100km,{Heated Seats, Heated Mirrors, Keyless Entry}

![image](https://user-images.githubusercontent.com/46803937/93285223-5d483f80-f7a2-11ea-9903-02c03e411070.png)
