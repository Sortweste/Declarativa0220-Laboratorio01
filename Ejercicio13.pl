/*
Crear una lista con todos lo enteros que existen entre dos número dados por el usuario.
Ej: Dados los números 3 y 9, se crea la lista [3,4,5,6,7,8,9].
*/

lista_intervalo(NumeroSuperior, NumeroSuperior, [NumeroSuperior]):-!.

lista_intervalo(NumeroInferior, NumeroSuperior, Lista):-
    =\=(NumeroInferior, NumeroSuperior),
    is(NumeroSiguiente, +(NumeroInferior, 1)),
    lista_intervalo(NumeroSiguiente, NumeroSuperior, NuevaLista),
    =(Lista, [NumeroInferior|NuevaLista]),!.

