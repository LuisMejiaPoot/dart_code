import 'package:flutter/material.dart';

class Persona {
  String? nombre;
  int? edad;

  Persona(this.nombre, this.edad);
}

class ListView1Screen extends StatelessWidget {
  final options = const ["Uno", "Dos", "Tres", "Cuatro", "Cinco"];
  final Map<String, Persona> personas = {
    'persona1': Persona('Juan', 25),
    'persona2': Persona('María', 30),
    'persona3': Persona('Pedro', 22),
  };

  ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView1Screen'),
      ),
      body: ListView(
        children: [
          ...personas.keys.map((e) => ListTile(
                title: Text(personas[e]!.nombre!),
                subtitle: Text(personas[e]!.edad.toString()),
                leading: Icon(Icons.people_outlined),
                trailing: Icon(Icons.keyboard_arrow_right),
              ))
        ],
      ),
    );
  }
}
