import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Información Personal',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Información Personal')),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: ListView(children: const [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://static.vecteezy.com/system/resources/previews/019/896/008/original/male-user-avatar-icon-in-flat-design-style-person-signs-illustration-png.png',
                ),
                radius: 100,
              ),
              Image(
                  image: NetworkImage(
                      'images/Kuroko-no-Basket-Netflix-TVLaint.jpg'),
                      height: 300,),
              ListTile(
                title: Text('Daniel'),
                subtitle: Text('Nombre:'),
                leading: Icon(Icons.assignment_ind),
              ),
              Divider(),
              ListTile(
                title: Text('Arboleda'),
                subtitle: Text('Apellido:'),
                leading: Icon(Icons.assignment_ind_outlined),
              ), 
              Divider(),
              ListTile(
                title: Text('3134694000'),
                subtitle: Text('Teléfono:'),
                leading: Icon(Icons.phone_android),
              ),
              Divider(),
              ListTile(
                title: Text('Kra 1 # 48D-54'),
                subtitle: Text('Dirección:'),
                leading: Icon(Icons.location_pin),
              ),
              Divider(),
              ListTile(
                title: Text('SENA-CPIC'),
                subtitle: Text('Institución:'),
                leading: Icon(Icons.apartment_rounded),
              ),
              Divider(),
              ListTile(
                title: Text('170002'),
                subtitle: Text('Codigo Postal:'),
                leading: Icon(Icons.local_post_office_outlined),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
