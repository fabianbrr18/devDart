void main() {
  List<String> listaFrutas = [
    'avellana', 'manzana', 'pera', 'albaricoque',
    'banana', 'uva', 'arándano', 'sandía',
    'aguacate', 'piña', 'almendra'
  ];
  
  List<String> listaFrutasFiltradas = [
    for (String fruta in listaFrutas)
      if (fruta.length > 5 && fruta.startsWith('a')) fruta
  ];
  
  print("Frutas con más de 5 caracteres y que comienzan con 'a': $listaFrutasFiltradas");
}
