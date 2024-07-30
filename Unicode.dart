void main() {
  List<String> listaSimbolosUnicode = [
    for (int i = 48; i <= 90; i++) String.fromCharCode(i)
  ];
  
  print("Lista de símbolos Unicode: $listaSimbolosUnicode");
}
