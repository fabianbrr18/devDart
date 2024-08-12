//login.dart
import 'package:flutter/material.dart';
import 'calculadora.dart'; // Asegúrate de que la importación esté presente.

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _usuarioController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  double _saldo = 0.0; // Variable para mantener el saldo

  // Credenciales almacenadas
  final String usuarioValido = "fabian";
  final String passValido = "elbicho7";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: contenido(),
    );
  }

  Widget contenido() {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('lib/assets/cr7.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            saludo(),
            usuario(),
            pass(),
            botoningreso(),
          ],
        ),
      ),
    );
  }

  Widget saludo() {
    return const Text(
      "Bienvenido",
      style: TextStyle(
        color: Colors.white,
        fontSize: 50,
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto',
      ),
    );
  }

  Widget usuario() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: TextField(
        controller: _usuarioController,
        decoration: InputDecoration(
          hintText: "Usuario",
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }

  Widget pass() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: TextField(
        controller: _passController,
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Contraseña",
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
      ),
    );
  }

  Widget botoningreso() {
    return SizedBox(
      width: 200,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          if (_usuarioController.text.isEmpty && _passController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Por favor, llene los campos"),
                backgroundColor: Color.fromARGB(255, 153, 5, 5),
              ),
            );
          } else if (_usuarioController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Por favor, ingrese un usuario"),
                backgroundColor: Color.fromARGB(255, 163, 13, 2),
              ),
            );
          } else if (_passController.text.isEmpty) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Por favor, ingrese una contraseña"),
                backgroundColor: Color.fromARGB(255, 153, 5, 5),
              ),
            );
          } else if (_usuarioController.text == usuarioValido &&
              _passController.text == passValido) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Calculadora(
                    usuario: _usuarioController.text, saldoActual: _saldo),
              ),
            ).then((nuevoSaldo) {
              if (nuevoSaldo != null) {
                setState(() {
                  _saldo = nuevoSaldo;
                });
              }
            });
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Usuario o contraseña incorrecto"),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        child: const Text(
          'Ingreso',
          style: TextStyle(color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(223, 212, 11, 11),
        ),
      ),
    );
  }
}