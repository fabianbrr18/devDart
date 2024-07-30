void main() {
  // Crear una lista cuyos elementos son Map dinámicos
  List listaPersona = [
    {
      "identificacion": "12345",
      "Nombre": "Pepe",
      "Apellidos": "Mujica",
      "Edad": 88,
      45: "pepe@sena.edu.co"
    },
    {
      "identificacion": "4567",
      "Nombre": "Samuel",
      "Apellidos": "Cordano",
      "Edad": 5,
      5: "samuel@sena.edu.co"
    },
  ];
  
  print(listaPersona); // Imprimir toda la lista
  print(listaPersona[1]); // Imprimir elemento 1 de la lista
  print(listaPersona[1]["Nombre"]); // Clave-valor del elemento 1
}
