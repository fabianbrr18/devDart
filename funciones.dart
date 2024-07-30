void main() {
  int num1 = 25;
  int num2 = 3;
  
  print("La suma es " + (sumar(num1, num2)).toString());
  print("El promedio es " + (calcularPromedio(num1, num2)).toString());
}

int sumar(int a, int b) => a + b;

double calcularPromedio(int a, int b) => (sumar(a , b) / 2);
