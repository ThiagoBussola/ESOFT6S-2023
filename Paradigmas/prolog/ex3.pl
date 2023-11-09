%Fatos
gerou(kelly, maria).
gerou(cleber, maria).
gerou(cleber, bruna).
gerou(maria, julia).
gerou(maria, pedro).
gerou(pedro, lucas).

feminino(kelly).
feminino(maria).
feminino(bruna).
feminino(julia).

masculino(cleber).
masculino(pedro).
masculino(lucas).

%regras

%:- significa um se
%o Y é filho de X se o X gerou o Y
filho(Y, X) :-
    gerou(X, Y).

%quero saber de quem o cleber é progenitor
filho(X, cleber).

$X é mae de Y se o X gerou o Y e X é feminino
mae(X, Y) :-
    gerou(X, Y),
    feminino(X).

avos(X, Z) :- 
    gerou(X, Y), 
    gerou(Y, Z).

avos(X, julia).
avos(kelly, X).