patelin([maison(_,_,_,_,_),maison(_,_,_,_,_),maison(_,_,_,_,_),maison(_,_,_,_,_),maison(_,_,_,_,_)]).

print_list([X|L]) :- writeln(X), print_list(L).

member2(X,[X|_]).
member2(X,[_|L]) :- member2(X,L).

premiere(X,[X|_]).

milieu(X, [_,_,X,_,_]).

agauche(A,B,[A, B|_]).
agauche(A,B,[_|Y]) :- agauche(A,B,Y).

voisin(A,B,[A, B|_]).
voisin(A,B,[B, A|_]).
voisin(A,B,[_|Y]) :- voisin(A,B,Y).

poisson :-
patelin(Quartier),

member2(maison(rouge, anglais, _, _, _), Quartier),
member2(maison(_, suedois, _, _, chiens), Quartier),
member2(maison(_, danois, the, _, _), Quartier),
member2(maison(verte, _, cafe, _, _), Quartier),
member2(maison(_, _, _, pallmall, oiseaux), Quartier),
member2(maison(jaune, _, _, dunhill, _), Quartier),
member2(maison(_, _, biere, bluemaster,_), Quartier),
member2(maison(_, allemand, _, prince, _), Quartier),
member2(maison(_, _, _, _, poisson), Quartier),

agauche(maison(verte, _, _, _, _), maison(blanche, _, _, _, _), Quartier),

milieu(maison(_, _, lait, _, _), Quartier),

premiere(maison(_, norvegien, _, _, _), Quartier),

voisin(maison(_, _, _, blend, _), maison(_, _, _, _, chats), Quartier),
voisin(maison(_, _, _, _, cheval), maison(_, _, _, dunhill, _), Quartier),
voisin(maison(_,norvegien, _, _, _), maison(bleue, _, _, _, _), Quartier),
voisin(maison(_, _, _, blend, _), maison(_, _, eau, _, _), Quartier),

print_list(Quartier).
