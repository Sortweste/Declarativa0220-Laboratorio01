/*
Dada una lista de números enteros, devolver otra lista donde el primer elemento es el elemento
más pequeño, el segundo elemento es el promedio de la lista, el tercer elemento es el mayor y
el cuarto elemento es el número de veces que se repite el promedio.
*/

clausula(Lista, NuevaLista):-
  [Cabeza|Cola] = Lista,
  buscar_mas_pequeno(Lista, Cabeza, R1),
  promedio_lista(Lista,0,0,R2),
  elemento_mayor(Lista,Cabeza, R3),
  repeticiones_promedio(Lista,0,R2,R4),
  =(NuevaLista, [R1,R2,R3,R4]).


buscar_mas_pequeno([Cabeza|Cola],Menor,R1):-
  =<(Cabeza, Menor),
  is(ElementoMenor, Cabeza),
  buscar_mas_pequeno(Cola, ElementoMenor, R1),!.

buscar_mas_pequeno([Cabeza|Cola],Menor,R1):-
    buscar_mas_pequeno(Cola, Menor, R1),!.

buscar_mas_pequeno([],Menor, Menor).

promedio_lista([Cabeza|Cola],SumElementos,ContElementos, R2):-
    is(Sum, +(SumElementos, Cabeza)),
    is(Cont, +(ContElementos, 1)),
    promedio_lista(Cola, Sum, Cont, R2).

promedio_lista([], Sum, Cont, R2):-
    is(R2, /(Sum, Cont)).

elemento_mayor([Cabeza|Cola],Mayor,R3):-
  >=(Cabeza, Mayor),
  is(ElementoMayor, Cabeza),
  elemento_mayor(Cola, ElementoMayor, R3),!.

elemento_mayor([Cabeza|Cola],Mayor,R3):-
    elemento_mayor(Cola, Mayor, R3),!.

elemento_mayor([],Mayor, Mayor).


repeticiones_promedio([Cabeza|Cola], Repeticiones, Promedio, R4):-
  ==(Cabeza, Promedio),
  is(Cont,+(Repeticiones, 1)),
  repeticiones_promedio(Cola, Cont, Promedio, R4).

repeticiones_promedio([Cabeza|Cola], Repeticiones, Promedio, R4):-
    repeticiones_promedio(Cola, Repeticiones, Promedio, R4).

repeticiones_promedio([], Repeticiones, _, Repeticiones).
