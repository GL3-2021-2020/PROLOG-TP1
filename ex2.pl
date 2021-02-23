lire(X) :- write('donner un entier '), nl, read(X), nl, write('votre entier est '),write(X),nl,nl.
calcul_carre(X,Y):- Y is X * X.
ecrire_resultat(X,Y) :- write('le carré de '), write(X), write(' est '),write(Y), nl,nl.
aller :- lire(X), calcul_carre(X,Y), ecrire_resultat(X,Y).

carre :- write('donner un entier'), nl, read(X), nl, Y is X*X, write('le carre de '), write(X), write(' est '),write(Y),nl,nl.

carre_boucle :- write('donner un entier'), nl, read(X),(X =\= 0 -> write('votre carre est '), Y is X*X, write(Y),nl,carre_boucle;write('entier null'),nl).

factoriel(0, 1).
factoriel(X,Y) :- 
     X > 0 ,
     A is X-1, 
     factoriel(A,Z), 
     Y is X*Z.