/*Projeto de Matematica Discreta ~ [Coloração de mapas] ~ Nuno Pontes ~ a21200373*/

adjacente(1, 2).				adjacente(2, 1).
adjacente(1, 3).				adjacente(3, 1).
adjacente(1, 4).				adjacente(4, 1).
adjacente(1, 5).				adjacente(5, 1).
adjacente(2, 3).				adjacente(3, 2).
adjacente(2, 4).				adjacente(4, 2).
adjacente(3, 4).				adjacente(4, 3).
adjacente(4, 5).				adjacente(5, 4).

cor(1, vermelho, a).		cor(1, vermelho, b).
cor(2, azul, a).			cor(2, azul, b).
cor(3, verde, a).			cor(3, verde, b).
cor(4, amarelo, a).			cor(4, azul, b).
cor(5, azul, a).			cor(5, verde, b).

conflito(Pintar) :-
	adjacente(X, Y),
	cor(X,Cor,Pintar),
	cor(Y,Cor,Pintar).

conflito(R1, R2, Pintar) :-
	adjacente(R1, R2),
	cor(R1,Cor,Pintar),
	cor(R2,Cor,Pintar).