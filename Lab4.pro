
%consult('Lab4.pro'). treksimo

%-- ASKHSH 1

fracSum(X,Y,Z) :- X= A1 / B1 ,Y= A2 / B2,Z =(L)/(K),gcd(A1*B2+A2*B1,B1*B2,G),L is (A1*B2+A2*B1)//G,K is (B1*B2)//G. 

gcd(0,M,M).
gcd(M,N,D):-M<N,K is N mod M,gcd(K,M,D).
gcd(M,N,D):-M>=N,K is M mod N,gcd(K,N,D).

%-----------------------------------------------------------------------------------------
     
%-- ASKHSH 2

sumd(N,S):-sum(N,0,0,S).

sum(N,S,X,Z):-N>=X+1,N mod (X+1) =:= 0,sum(N,S+X+1,X+1,Z).
sum(N,S,X,Z):-N>=X+1,N mod (X+1) \== 0 ,sum(N,S,X+1,Z).
sum(N,S,X,Z):- N<X+1,Z is S.        

%-----------------------------------------------------------------------------------------
     
%-- ASKHSH 3

alpha([H|T],T1) :-betaa([H|T],[-1],-1,epomeno,[H1|T1]).% vazo mia tixea timi,           -1 h tin nil 
betaa([H|T],L,Proigoumeno,epomeno,L2) :- append(L,[H],L1), Proigoumeno =:= -1 ,betaa(T,L1,H,epomeno,L2).                %gia proto stixio
betaa([H|T],L,Proigoumeno,epomeno,L2) :- append(L,[H],L1), Proigoumeno@<H,H@>=H1 ,[H1|[H|T]],betaa(T,L1,H,epomeno,L2).  %korifi
betaa([H|T],L,Proigoumeno,epomeno,L2) :- append(L,[H],L1), Proigoumeno@>H,H@=<H1 ,[H1|[H|T]],betaa(T,L1,H,epomeno,L2).  %pithmenas

betaa([H|T],L,Proigoumeno,epomeno,L1) :- append(L,[H],L1), Proigoumeno@>H,[]=:=[H|T] ,[H1|[H|T]].               %gia teleuteo stixio

