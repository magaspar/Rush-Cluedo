% http://www.une-enigme.com/les-pierres-l-mentales-1793.html (lien vers enigme)


pierre(feu).
pierre(air).
pierre(eau).
pierre(terre).

matiere(chimiol).
matiere(magnene).
matiere(strondol).
matiere(deutane).

position(un).
position(deux).
position(trois).
position(quatre).

relation(feu,P,strondol):-position(P).
relation(T,P,deutane):-pierre(T) ,T\==air,position(P) ,P\==quatre ,P\==trois.
relation(T,P,magnene):-pierre(T) ,T\==air,position(P) ,P\==quatre.
relation(T,P,chimiol):-pierre(T) ,position(P) ,P\==quatre.

different(X,X,_,X):-!,fail.
different(X,_,X,X):-!,fail.
different(_,X,X,X):-!,fail.
different(X,X,X,_):-!,fail.
different(X,X,_,_):-!,fail.
different(X,_,X,_):-!,fail.
different(_,X,X,_):-!,fail.
different(_,_,X,X):-!,fail.
different(X,_,_,X):-!,fail.
different(X,X,_,_):-!,fail.
different(_,X,_,X):-!,fail.
different(_,_,_,_).

air(PS,PD,PM,PC,TD,TM,TC):-
			relation(feu,PS,strondol),
			relation(TD,PD,deutane),
			relation(TC,PC,chimiol),
			relation(TM,PM,magnene),
			different(PS,PD,PM,PC),
			different(feu,TD,TM,TC),
!.
