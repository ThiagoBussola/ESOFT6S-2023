%Fatos
gerou(kelly, maria).
gerou(cleber, maria).
gerou(cleber, bruna).
gerou(maria, julia).
gerou(maria, pedro).
gerou(pedro, lucas).

%quem a kelly gerou
gerou(kelly, X).
% o ; vai pro próximo registro que ele gerou

%para saber quem em comum gerou os dois, quem sao os pais
gerou(X, julia), gerou(X, pedro).


%saber quem sao os avos de pedro
%um X gerou um Y e esse Y gerou o pedro
gerou(X, Y), gerou(Y, pedro).


%quem sao os netos de cleber
% cleber gerou um Y e esse Y gerou um X
gerou(cleber, Y), gerou(Y, X).
gerou(cleber, Y), gerou(Y, Z).


%quem gerou quem
% X gerou um Y e esse Y gerou um Z
gerou(X, Y), gerou(Y, Z)
