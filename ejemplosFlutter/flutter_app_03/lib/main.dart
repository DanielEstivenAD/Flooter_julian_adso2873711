import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Principal());
}

class Principal extends StatelessWidget {
  const Principal({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle estilos =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    final ButtonStyle estilos1 = FilledButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20));
    return MaterialApp(
      title: 'Widgets basicos flutter',
      home: Column(
        children: [
          const Text(
              overflow: TextOverflow.fade,
              maxLines: 1,
              'Lenguajes de programación'),
          const Icon(
            Icons.adb,
            color: Color.fromARGB(255, 117, 2, 179),
            size: 10.0,
            semanticLabel: 'home',
          ),
          // const Text('Dart'),
          // const Text('Python'),
          // const Text('JavaScript'),
          // const Text('Java'),
          // const Text('C++'),
          // const Text('C#'),
          // const Text('Ruby'),
          // const Text('Swift'),
          // const Text('PHP'),
          // const Text('Go'),
          // const Text('Rust'),
          ElevatedButton(
              onPressed: () {}, style: estilos, child: const Text('Enviar')),
          FilledButton(
              onPressed: () {},
              style: estilos1,
              child: const Text("Clic aquí")),
          const Image(
            image: NetworkImage(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
                width: 100,
          ),
          const Image(image: NetworkImage('images/images.png'),
            width: 100,
          )
        ],
      ),
    );
  }
}
