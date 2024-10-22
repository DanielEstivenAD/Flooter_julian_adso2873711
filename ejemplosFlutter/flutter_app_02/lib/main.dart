import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal()); // Aquí se inicia y se lanza la app
}
class Principal extends StatelessWidget { //Se crea una clase que hereda de StatelesWidget para crear un widget sin estado
  const Principal({super.key}); //Constructor de la clase principal

  @override //Se sobreescribe el metodo build de la clase padre para generar la interfaz de usuario
  Widget build(BuildContext context) {
    //Se retorna un  widget, en nuestro caso MaterialApp

    return const MaterialApp(
      title: 'Mi primera app - Adso 2873711', //Título de la app
      home: Text('Primera app en flutter\n Daniel Estiven Arboleda Duque \nAdso 2873711\nCPIC - SENA'),
    );
  }
}