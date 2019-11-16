 /*primeiro exercicio*/
ser(mary,inf).
likes(john,mary).
likes(mary,abacaxi).
likes(X,Y) :- likes(X,Z),ser(Z,inf),likes(Z,Y).

/*segundo exercicio*/
father(paulo,andre).
father(julio,paulo).
mother(julia,isa).
mother(ana,paulo).
mother(ana,julia).
mother(ana,bela).
female(X) :- mother(X,_).
female(bela).
female(julia).
female(ana).
female(isa).
male(X) :- father(X,_).
male(paulo).
male(julio).
male(andre).
parent(X,Y) :- father(X,Y); mother(X,Y).
parent(paulo,andre).
parent(julio,paulo).
parent(julio,bela).
parent(julio,julia).
parent(julia,isa).
parent(ana,paulo).
parent(ana,julia).
parent(ana,bela).
diff(X,Y) :-  X \== Y.
is_mother(X):- mother(X,Z),diff(X,Z).
is_father(X):- father(X,Z),diff(X,Z).
is_son(X) :- parent(Z,X),diff(Z,X),male(X).
sister_of(X,Y) :- female(X),parent(Z,X),parent(Z,Y),diff(X,Y).
grandpa_of(X,Y) :- father(X,Z),parent(Z,Y).
sibling(X,Y):-parent(Z,X),parent(Z,Y),parent(H,X),parent(H,Y),diff(X,Y),diff(Z,H).








