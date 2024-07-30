void main() {
  List<int> numeros = [1, 2, 3, 4, 5];
  
  // Imprimir los datos de la lista
  print("Datos de la lista: $numeros");
  
  // Intentar añadir un dato de tipo diferente (esto causará un error de tipo en Dart)
  numeros.add(56); // Error: 'bool' can't be assigned to the parameter type 'int'.
}
