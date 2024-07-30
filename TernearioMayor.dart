void main() {
  int num1 = 23;
  int num2 = 3;
  int num3 = 8;
  
  if (num1 > num2 && num1 > num3) {
    print("$num1 es el mayor");
  } else if (num2 > num1 && num2 > num3) {
    print("$num2 es el mayor");
  } else if (num3 > num1 && num3 > num2) {
    print("$num3 es el mayor");
  } else {
    print("$num1, $num2 y $num3 son iguales.");
  }
}
