/*
Elabore la cláusula intercalar_listas(+, +, -), cuyos dos primeros parámetros son
listas de igual longitud. Por ejemplo, [mango, fresa, jocote] y [tenaza, clavo, tornillo],
en el tercer parámetro se devuelve una lista que resulta de combinar las dos anteriores,
así: [mango, tenaza, fresa, clavo, jocote, tornillo].
*/

intercalar_listas([CabezaLista1|ColaLista1], [CabezaLista2|ColaLista2], Respuesta):-
    intercalar_listas(ColaLista1, ColaLista2, NuevaRespuesta),
    =(Respuesta, [CabezaLista1, CabezaLista2|NuevaRespuesta]),!.

intercalar_listas(_,_,[]).
