import 'package:flutter/material.dart';

void main() {
  runApp(const Myhome());
}

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grids',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Trabajo con Grids'),
          backgroundColor: const Color.fromARGB(255, 243, 198, 62),
          foregroundColor: const Color.fromARGB(255, 90, 90, 90),
        ),
        body: Container(
          color: const Color.fromARGB(255, 238, 161, 46),
            child: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 2,
          crossAxisSpacing: 1, //Cantidad de elementos por fila
          children: const [
            Card(
              child: Column(
                children: [
                  Text('Targeta 1'),
                  Text('Adso'),
                  Text('2873711'),
                  Icon(Icons.computer)
                ],
              ),
            ),
            Card(
              child: Text('Targeta 2'),
            ),
            Card(
              child: Text('Targeta 3'),
            ),
            Card(
              child: Text('Targeta 4'),
            ),
            Card(
              child: Text('Targeta 5'),
            ),
            Card(
              child: Text('Targeta 6'),
            ),
            Card(
              child: Text('Targeta 7'),
            ),
            Card(
              child: Text('Targeta 8'),
            ),
            Card(
              child: Text('Targeta 9'),
            ),
            Card(
              child: Text('Targeta 10'),
            ),
            Card(
              child: Text('Targeta 10'),
            ),
          ],
        )),
      ),
    );
  }
}
