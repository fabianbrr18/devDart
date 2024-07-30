import "dart:math";

void main() {
  List<int> cuadrados = [];
  
  for (int i = 1; i <= 10; i++) {
    int cuadrado = pow(i, 2).toInt();
    if (cuadrado <= 50) {
      cuadrados.add(cuadrado);
    }
  }
  
  print("Cuadrados menores o iguales a 50: $cuadrados");
}
