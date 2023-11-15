import 'package:flutter/material.dart';
import 'package:modelo_app/src/example/widgets/forms/form_items.dart';

void main() {
  runApp(MaterialApp(
    home: ModeloAppBottomBarApp(),
  ));
}

class ModeloAppBottomBarApp extends StatelessWidget {
  const ModeloAppBottomBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ModeloAppBottomBar());
  }
}

// creamos clase con la cual podremos mover el state del widget

class ModeloAppBottomBar extends StatefulWidget {
  const ModeloAppBottomBar({super.key});

  @override
  State<ModeloAppBottomBar> createState() => _ModeloAppBottomBarState();
}

class _ModeloAppBottomBarState extends State<ModeloAppBottomBar> {
  int _selectedIndex = 0;
  static const TextStyle textStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _woptions = <Widget>[
    Container(
        child: Column(
      children: [
        Center(
          child: Text("Button"),
        )
      ],
    )),
    Text(
      ' Business',
      style: textStyle,
    ),
    Text(
      'School',
      style: textStyle,
    ),
  ];

  // metodo para el tap de iconos y poder cambiar la pantalla
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BottomNavigationBar Sample"),
      ),
      body: Center(child: _woptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
