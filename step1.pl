femme(X) :- member(X,[anne, betty, lisa, sylvie, eve, julie, valerie]).
homme(X) :- member(X, [marc, luc, jean, jules, leon, loic, gerard, jacques, herve, paul]).

mari_de(X, Y) :- member((X, Y), [(marc,anne), (luc, betty), (jules, lisa), (leon, sylvie), (loic, eve), (paul, julie)]).
femme_de(X, Y) :- mari_de(Y, X).

beaupere_de(X, Y) :- member((X, Y), [(marc, lisa), (marc, sylvie), (luc, jules), (luc, eve), (leon, paul), (loic, julie)]).
bellemere_de(X, Y) :- beaupere_de(A ,Y), femme_de(X , A).

enfant_de(X, Y) :- member((X, Y), [(jean, marc), (jules, marc), (leon, marc)]).
enfant_de(X, Y) :- member((X, Y), [(jean, anne), (jules, anne), (leon, anne)]).
enfant_de(X, Y) :- member((X, Y), [(lisa, luc), (loic, luc), (gerard, luc)]).
enfant_de(X, Y) :- member((X, Y), [(lisa, betty), (loic, betty), (gerard, betty)]).
enfant_de(X, Y) :- member((X, Y), [(jacques, jules)]).
enfant_de(X, Y) :- member((X, Y), [(jacques, lisa)]).
enfant_de(X, Y) :- member((X, Y), [(herve, leon), (julie, leon)]).
enfant_de(X, Y) :- member((X, Y), [(herve, sylvie), (julie, sylvie)]).
enfant_de(X, Y) :- member((X, Y), [(paul, loic), (valerie, loic)]).
enfant_de(X, Y) :- member((X, Y), [(paul, eve), (valerie, eve)]).

ancetre_de(X, Y) :- enfant_de(Y, X).
ancetre_de(X, Y) :- enfant_de(Y, A), enfant_de(A, X).
