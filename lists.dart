void main() {
  List<int> listaEdad = [32, 54, 21, 34, 5, 5];
  
  // Imprimir los datos contenidos en la lista
  print("Datos de la lista: $listaEdad");
  
  // Imprimir el tamaño de la lista
  print("Tamaño de la lista: ${listaEdad.length}");
  
  // Imprimir el elemento de la posición 3
  print("Elemento en la posición 3: ${listaEdad[3]}");
  
  // Ordenar la lista
  listaEdad.sort();
  print("Lista ordenada: $listaEdad");
  
  // Imprimir una sublista de tres elementos
  List<int> subLista = listaEdad.sublist(1, 4);
  print("Sublista: $subLista");
}
