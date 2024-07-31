import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _randomNumber = Random().nextInt(100) + 1;
  int _attempts = 0;
  String _feedback = '';
  final _controller = TextEditingController();

  void _checkGuess() {
    setState(() {
      _attempts++;
      int guess = int.tryParse(_controller.text) ?? 0;
      if (guess < _randomNumber) {
        _feedback = 'El número es mayor';
      } else if (guess > _randomNumber) {
        _feedback = 'El número es menor';
      } else {
        _feedback = '¡Correcto! Has adivinado el número.';
      }
    });
  }
   void _resetGame() {
    setState(() {
      _randomNumber = Random().nextInt(100) + 1; // Genera un nuevo número aleatorio
      _attempts = 0; // Reinicia el contador de intentos
      _feedback = ''; // Reinicia el mensaje de retroalimentación
      _controller.clear(); // Limpia el campo de texto
    });
  }

  void _revealNumber() {
    print('El número aleatorio es $_randomNumber');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adivina el Número'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              child: Image.network('https://via.placeholder.com/150'), // URL de imagen de ejemplo
            ),
            Text(
              'Hola, soy Chaplin. He pensado un número del 1 al 100. ¡Adivina cuál es!',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Ingrese el número',
              ),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: _checkGuess,
              child: Text('Adivina'),
            ),
            ElevatedButton(
              onPressed: _resetGame,
              child: Text('Reiniciar Juego'),
            ),
            Text(
              'Chaplin dice: $_feedback',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Intentos: $_attempts',
              style: TextStyle(fontSize: 16),
            ),
            ElevatedButton(
              onPressed: _revealNumber,
              child: Text('Revelar número'),
            ),
          ],
        ),
      ),
    );
  }
}
