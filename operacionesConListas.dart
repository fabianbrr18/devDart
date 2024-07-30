void main() {
  List<int> numeros = [32, 54, 21, 34, 5, 6];
  
  // Imprimir los datos originales
  print("Datos originales: $numeros");
  
  // Imprimir en orden ascendente
  List<int> ascendente = List.from(numeros)..sort();
  print("Orden ascendente: $ascendente");
  
  // Imprimir en orden descendente
  List<int> descendente = List.from(numeros)..sort((a, b) => b.compareTo(a));
  print("Orden descendente: $descendente");
}
