void main() {
  String deporte = "Fútbol";

  switch (deporte) {
    case "Fútbol":
      print("Implementos: Balón, Espinilleras, Botas de fútbol.");
      break;
    case "Tenis":
      print("Implementos: Raqueta, Pelotas de tenis, Zapatillas.");
      break;
    case "Natación":
      print("Implementos: Gafas, Traje de baño, Gorra.");
      break;
    default:
      print("Deporte no registrado.");
  }
}
