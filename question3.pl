 / * 1 */ 
incomep(F,M,In) :- salary(F,S), salary(M,S1), In is S+S1. incomec([],0).
incomec([H|T],In) :- salary(H,S), incomec(T,In1), In is S + In1. 
totalincome(family(F,M,C),In) :- incomep(F,M,I1), incomec(C,I2), In is I1+I2.

 / * 2 */ 

family(F,M,S),totalincome(family(F,M,S),In).

 / * 3 */ 

family(F,M,S), totalincome(family(F,M,S),TI), append([F,M],S,TF), length(TF,L), Av
is (TI/L), Av<2000.


 / * 4 */ 

family(F,M,S), incomep(F,M,PI), incomec(S,CI),CI>PI.
