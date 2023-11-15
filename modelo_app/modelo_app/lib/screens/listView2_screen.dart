import 'package:flutter/material.dart';

class Persona1 {
  String? nombre;
  int? edad;
  Widget? icon;

  Persona1(this.nombre, this.edad, this.icon);
}

class ListView2Screen extends StatelessWidget {
  final options = const ["Uno", "Dos", "Tres", "Cuatro", "Cinco"];
  final Map<String, Persona1> personas = {
    'persona1': Persona1('Juan', 25, Icon(Icons.people_outlined)),
    'persona2': Persona1('María', 30, Icon(Icons.stadium)),
    'persona3': Persona1('Pedro', 22, Icon(Icons.pets_outlined)),
    'persona4': Persona1('Pedro', 22, Icon(Icons.pets_outlined)),
    'persona5': Persona1('Pedro', 22, Icon(Icons.pets_outlined)),
  };

  ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView2Screen'),
      ),
      body: ListView.separated(
        itemCount: personas.keys.length,
        itemBuilder: (context, index) {
          final persona = personas[personas.keys.elementAt(index)];
          return ListTile(
            title: Text(persona!.nombre!, style: TextStyle(fontSize: 20)),
            subtitle: Text(
                'Edad: ${persona.edad.toString()} ${personas.keys.elementAt(index)}'),
            leading: persona.icon,
            trailing: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.indigo,
            ),
            onTap: () {
              print('Tapped ${personas.keys.elementAt(index)}');
            },
          );
        },
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}

/* 
ListView(
        children: [
          ...personas.keys.map((e) => ListTile(
                title: Text(personas[e]!.nombre!),
                subtitle: Text(personas[e]!.edad.toString()),
                leading: Icon(Icons.people_outlined),
                trailing: Icon(Icons.keyboard_arrow_right),
              ))
        ],
      ) */