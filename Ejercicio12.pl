/*
Elabore la cláusula insertar_en(+, +, +, -), la cual inserte un elemento dentro de una lista en una
posición indicada por el usuario. Los tres primeros argumentos son la lista original, el elemento
a insertar y la posición en que éste se insertará, el cuarto argumento es la lista resultante.
*/

insertar_en(Lista, Elemento, Posicion, Resultado):-
  verificar(Lista, Elemento, Posicion, 1, Resultado).


verificar([Cabeza|Cola], Elemento, Posicion, Contador, Resultado):-
  =\=(Posicion, Contador),
  is(Cont, +(Contador,1)),
  verificar(Cola, Elemento, Posicion, Cont, Lista),
  =(Resultado, [Cabeza|Lista]),!.

verificar([Cabeza|Cola], Elemento, Posicion, Contador, Resultado):-
  is(Cont, +(Contador,1)),
  verificar(Cola, Elemento, Posicion, Cont, Lista),
  =(Resultado, [Elemento, Cabeza|Lista]),!.

verificar([],_,_,_,[]).
