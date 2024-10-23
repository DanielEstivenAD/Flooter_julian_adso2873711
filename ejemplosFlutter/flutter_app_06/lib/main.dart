import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatefulWidget {
  //MyHome Hereda de statefllWidget
  const MyHome({super.key}); //Constructor de la clase MyHome

  @override //Se sobreescribe el método del padre createstate para poder crear estados del Widget
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override //Se sobreescribe el método build para retornar un Widget con toda la interfaz
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Citios turisticos',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Citios Turísticos'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: const [
            Column(
              children: [
                Text('Coliseo Romano'),
                Text('El Gran Cañón'),
                Text('La gran muralla China'),
                Text('La Sagrada Familia'),
                Text('Torre Eiffel'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
