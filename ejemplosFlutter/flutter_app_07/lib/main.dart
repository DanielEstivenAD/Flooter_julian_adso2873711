import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sitios Turísticos',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Sitios Turísticos'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: ListView.builder(
          itemCount: sitiosTuristicos.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
                color: Colors.amber,
                shadowColor: Colors.black,
                surfaceTintColor: Colors.grey,
                elevation: 10,
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  title: Text(sitiosTuristicos[index]),
                  subtitle: Text('Puesto ${index + 1}'),
                  leading: const Icon(Icons.location_pin),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    // print(
                    //     'Tap Sobre el Sitio turístico ${sitiosTuristicos[index]}');
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Sitio Turístico número ${index + 1}'),
                            content: Text(sitiosTuristicos[index + 1]),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('cerrar'))
                            ],
                          );
                        });
                  },
                ));
          },
        ),
        // ListView.separated(
        //   itemCount: sitiosTuristicos.length,
        //   separatorBuilder: (BuildContext context, int index) {
        //     return const Divider();
        //   },
        //   itemBuilder: (BuildContext context, int index) {
        //     return ListTile(
        //       title: Text(' ${sitiosTuristicos[index]}'),
        //       subtitle: Text('Puesto ${index + 1}'),
        //       leading: const Icon(Icons.location_pin),
        //     );
        //   },
        // ),
      ),
    );
  }
}
//Text('Indice ${sitiosTuristicos[index]}')

List<String> sitiosTuristicos = [
  'La Gran Muralla China, China',
  'Machu Picchu, Perú',
  'Torre Eiffel, Francia',
  'Coliseo, Italia',
  'Estatua de la Libertad, EE.UU.',
  'Taj Mahal, India',
  'Chichén Itzá, México',
  'Santorini, Grecia',
  'Petra, Jordania',
  'Stonehenge, Inglaterra',
  'Cristo Redentor, Brasil',
  'La Alhambra, España',
  'Monte Fuji, Japón',
  'Sagrada Familia, España',
  'Acropolis de Atenas, Grecia',
  'Templos de Angkor, Camboya',
  'Plaza Roja, Rusia',
  'Times Square, EE.UU.',
  'Las Cataratas del Niágara, Canadá/EE.UU.',
  'Palacio de Versalles, Francia',
  'Gran Cañón, EE.UU.',
  'Monte Kilimanjaro, Tanzania',
  'Islas Galápagos, Ecuador',
  'La Habana Vieja, Cuba',
  'Mezquita Azul, Turquía',
  'Paseo de la Fama de Hollywood, EE.UU.',
  'Pirámides de Giza, Egipto',
  'Mont Saint-Michel, Francia',
  'Parque Nacional de Yellowstone, EE.UU.',
  'Sídney Opera House, Australia',
  'Venecia, Italia',
  'Plaza de San Pedro, Ciudad del Vaticano',
  'Ciudad Prohibida, China',
  'Lago de Como, Italia',
  'Isla de Pascua, Chile',
  'Parque Nacional Kruger, Sudáfrica',
  'Museo del Louvre, Francia',
  'Ponte Vecchio, Italia',
  'Cataratas Victoria, Zimbabue/Zambia',
  'Parque Nacional Banff, Canadá',
  'La Giralda, España',
  'Disneyland, EE.UU.',
  'Campos de Concentración de Auschwitz, Polonia',
  'Muralla de Dubrovnik, Croacia',
  'Ópera de Viena, Austria',
  'Monte Rushmore, EE.UU.',
  'Cataratas de Iguazú, Argentina/Brasil',
  'Bahía de Ha Long, Vietnam',
  'Palacio de Buckingham, Inglaterra',
  'Meteora, Grecia',
  'Plaza de la Concordia, Francia',
  'Manhattan, EE.UU.',
  'Centro Histórico de Florencia, Italia',
  'Isla de Bali, Indonesia',
  'Templo del Cielo, China',
  'Parque Güell, España',
  'Islas Maldivas, Maldivas',
  'Monte Everest, Nepal',
  'Catedral de San Basilio, Rusia',
  'Ayers Rock (Uluru), Australia',
  'Ciudadela de Hue, Vietnam',
  'Museo Británico, Inglaterra',
  'Monte Saint-Michel, Francia',
  'Ciudad Vieja de Jerusalén, Israel',
  'Santuario Meiji, Japón',
  'Paseo del Prado, España',
  'Catedral de Notre Dame, Francia',
  'Barrio Gótico, España',
  'Estadio Maracaná, Brasil',
  'Canales de Brujas, Bélgica',
  'Vaticano, Ciudad del Vaticano',
  'Basílica de San Marcos, Italia',
  'Bahía de San Francisco, EE.UU.',
  'Monte Pilatus, Suiza',
  'Mérida, México',
  'Big Ben, Inglaterra',
  'Safari en Kenia, Kenia',
  'Islas Phi Phi, Tailandia',
  'Las Vegas Strip, EE.UU.',
  'Capadocia, Turquía',
  'Lago Titicaca, Perú/Bolivia',
  'Cartagena, Colombia',
  'El Pantanal, Brasil',
  'Jardines de Keukenhof, Países Bajos',
  'Río de Janeiro, Brasil',
  'La Medina de Fez, Marruecos',
  'Puente Golden Gate, EE.UU.',
  'Círculo Polar Ártico, Noruega',
  'Fiordos de Noruega, Noruega',
  'Viena, Austria',
  'Antártida',
  'Casa Batlló, España',
  'Cueva de Waitomo, Nueva Zelanda',
  'Parque Nacional Torres del Paine, Chile',
  'Casablanca, Marruecos',
  'Isla de Capri, Italia',
  'Monte Saint Helens, EE.UU.',
  'Cascadas de Ouzoud, Marruecos',
  'Transiberiano, Rusia',
  'Ruta 66, EE.UU.',
  'La Digue, Seychelles'
];
