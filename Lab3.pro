%---------------------------------Dimitris Katsamos A.M.: 2998----------------------------
%consult('Lab3.pro'). treksimo
%-----------------------------------------------------------------------------------------
%-- ASKHSH 1

p1(I,J) :- purchase(I,A,_,_),purchase(J,A,_,_).

p2(X,Y) :- item(C,X,_,_), item(C1,Y,_,_), purchase(_,A,C,_),purchase(_,A,C1,_).

p3(C) :- item(C,X,G,P),item(C1,X,G1,P1),P/G>P1/G1.

p4(I,T) :- item(C,_,_,P),purchase(I,A,C,N),discount(A,D),T is N*P - (N*D*P/100).

%-----------------------------------------------------------------------------------------
     
%-- ASKHSH 2

path(X,Y) :- link(X,Y).
path(X,Y) :- link(Z,Y),path(X,Z).

biconnected(X,Y) :-link(X,Y),path(Z,Y),path(X,Z).

meetpoint(S1,D1,S2,D2,X) :- source(S1),source(S2),destination(D1),destination(D2),path(S1,X),path(X,D1),path(S2,X),path(X,D2).

%-----------------------------------------------------------------------------------------
     
%-- ASKHSH 3

zeta(K,N,X,Y,G) :- K=:=0,G is Y+K.
zeta(K,N,X,Y,G) :- N<K,G is Y+K.
zeta(K,N,X,Y,G) :- Y<K,N=:=K,G is X.
zeta(K,N,X,Y,G) :- Y<K,N=:=K+1,G is (N-2).
zeta(K,N,X,Y,G) :- Y<K,N>=K+2,G is K.
zeta(K,N,X,Y,G) :- Y>=K,N>=K,K>=1 ,zeta(K,N,X,Y-K,E),zeta(K,N-K,X,E,T), G is T.

%-----------------------------------------------------------------------------------------
     
%-- ASKHSH 4 
                                  
nat(0).   
nat(s(X)) :- nat(X).
sum(X,0,X) :- nat(X).
sum(X,s(Y),s(Z)) :- sum(X,Y,Z).

aferesi(X, Y, Z) :- sum(Z, Y, X).

divide(X,0,undefined) :- !.
divide(0, _ , 0).
divide(X, Y, 0) :- X@<Y.
divide(X, s(0), X).
divide(A, B, s(N)) :- aferesi(A, B, R), divide(R, B, N).

%-----------------------------------------------------------------------------------------
%-----------------------------------------------------------------------------------------
%-----------------------------------------------------------------------------------------

%-- MHN TROPOPOIHSETE TO PARAKATW TMHMA KWDIKA 


item(n3001,coffee,100,1.25).
item(n3002,coffee,200,2.40).
item(n3205,sugar,500,1.80).
item(d1105,milk,500,0.65).
item(d1110,milk,1000,1.20).
item(k2105,bread,500,0.90).
item(k2110,bread,1000,1.80).
item(k2120,bread,2000,3.60).
item(z1005,water,500,0.35).
item(z1010,water,1000,0.80).
item(n3201,tea,100,1.48).

purchase(inv001,'Mickey Mouse',n3002,3).
purchase(inv002,'Mickey Mouse',n3205,1).
purchase(inv008,'Mickey Mouse',d1110,2).
purchase(inv004,'Donald Duck',d1105,15).
purchase(inv005,'Donald Duck',k2120,50).
purchase(inv003,'Lucky Luke',z1005,3).
purchase(inv006,'Cocco Bill',n3002,2).
purchase(inv007,'Lucky Luke',z1005,7).

discount('Mickey Mouse', 10).
discount('Donald Duck',25).
discount('Lucky Luke',35).
discount('Cocco Bill',0).
discount('Woody Woodpecker',5).

source(a).
source(b).
source(c).

destination(x).
destination(y).
destination(z).

link(a,d).
link(a,e).
link(b,d).
link(b,f).
link(c,f).
link(c,g).
link(c,q).
link(d,h).
link(d,i).
link(e,j).
link(f,k).
link(f,w).
link(g,l).
link(h,i).
link(i,p).
link(i,x).
link(j,x).
link(j,y).
link(j,z).
link(k,y).
link(l,m).
link(m,n).
link(n,o).
link(o,i).
link(p,y).
link(q,r).
link(r,s).
link(r,u).
link(s,t).
link(t,u).
link(u,x).
link(v,z).
link(w,v).
link(w,z).



