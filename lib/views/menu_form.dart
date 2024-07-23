import 'package:flutter/material.dart';

class MenuForm extends StatefulWidget {
  @override
  _MenuFormPageState createState() => _MenuFormPageState();
}

class _MenuFormPageState extends State<MenuForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu de Opciones'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 24, 24, 24),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                        radius: 40,
                        backgroundImage: AssetImage('lib/imagenes/badge.png')),
                    SizedBox(height: 10),
                    Text(
                      'ADMINISTRACIÓN',
                      style: TextStyle(
                        color: Color.fromARGB(255, 21, 255, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )),
            ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 0, 255, 55),
                ),
                title: const Text(
                  'INICIO',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 255, 55),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: const Icon(
                  Icons.person,
                  color: Color.fromARGB(255, 115, 255, 0),
                ),
                title: const Text(
                  'CLIENTES',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 255, 85),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'cliente_form');
                }),
            ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Color.fromARGB(255, 72, 255, 0),
                ),
                title: const Text(
                  'ORDEN DE TRABAJO',
                  style: TextStyle(
                    color: Color.fromARGB(255, 51, 255, 0),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: const Icon(
                  Icons.book_online,
                  color: Color.fromARGB(255, 0, 255, 42),
                ),
                title: const Text(
                  'ENCUESTAS',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 255, 34),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'encuesta_form');
                }),
            ListTile(
                leading: const Icon(
                  Icons.location_on,
                  color: Color.fromARGB(255, 0, 255, 34),
                ),
                title: const Text(
                  'LOCALIZACION',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 255, 34),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                }),
            ListTile(
                leading: const Icon(
                  Icons.close,
                  color: Color.fromARGB(255, 0, 255, 13),
                ),
                title: const Text(
                  'CERRAR SESIÓN',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 255, 34),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                }),
          ],
        ),
      ),
    );
  }
}
