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

%trazendo somente a avó
gerou(X, Y), gerou(Y, julia), feminino(X).

%trazendo somente a avô
gerou(X, Y), gerou(Y, julia), masculino(X).

$saber se o pedro tem uma irma
gerou(X, julia), gerou(X, pedro), feminino(X).

gerou(X, Y), gerou(X, pedro)

% esse x gerou um Y e esse mesmo Y gerou o pedro, e o Y gerado por X é feminino
gerou(X, Y), gerou(X, pedro), feminino(Y).
