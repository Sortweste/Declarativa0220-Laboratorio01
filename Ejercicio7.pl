
/*
Resuelva el problema de eliminar de una lista el objeto ubicado en una determinada posición de
la misma. La cláusula recibe la lista original, la posición en la cual está el objeto a eliminar y debe
retornar una lista con ese objeto eliminado. Nota: los elementos de la lista resultante deberán
estar en el mismo orden relativo que en la lista original.
*/
eliminar_posicion(Lista, Posicion, ListaNueva):-
verificar(Lista, Posicion, 0, ListaNueva).


verificar([Cabeza|Cola], Posicion, Contador, ListaNueva):-
=\=(Posicion, Contador),
is(Cont, +(Contador,1)),
verificar(Cola,Posicion,Cont, Lista),
=(ListaNueva, [Cabeza|Lista]),!.

verificar([Cabeza|Cola], Posicion, Contador, ListaNueva):-
is(Cont, +(Contador,1)),
verificar(Cola,Posicion,Cont,Lista),
=(ListaNueva, Lista),!.

verificar([], _, _, []).
