void main() {
  Map datosPersonales = {
    "identificacion": "12345",
    "Nombre": "Pepe",
    "Apellidos": "Mujica Cordano",
    "Edad": 88,
    45: "pepe@sena.edu.co"
  };

  print("Datos de Map: " + datosPersonales.toString());
  print("Su correo es: " + datosPersonales[45].toString());
  print("La edad es " + datosPersonales["Edad"].toString());
  print("Su identificación es " + datosPersonales["identificacion"]);
}
