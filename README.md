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
