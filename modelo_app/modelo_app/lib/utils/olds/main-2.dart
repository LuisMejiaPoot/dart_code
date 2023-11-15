import 'package:flutter/material.dart';

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

class ModeloAppBottomBar extends StatefulWidget {
  const ModeloAppBottomBar({super.key});

  @override
  State<ModeloAppBottomBar> createState() => _ModeloAppBottomBarState();
}

class _ModeloAppBottomBarState extends State<ModeloAppBottomBar> {
  int selected = 0;
  static const TextStyle text =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _woptions = <Widget>[
    Text(
      "Texto 1",
      style: text,
    ),
    Text("Texto 2", style: text),
    Text("Texto 3", style: text),
  ];

  void itemTapped(int index) {
    setState(() {
      selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bottom Bar")),
      body: Center(child: _woptions.elementAt(selected)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Pantalla 1",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Pantalla 2 ",
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: "Pantall 3",
              backgroundColor: Colors.blue)
        ],
        currentIndex: selected,
        selectedItemColor: Colors.amber[800],
        onTap: itemTapped,
      ),
    );
  }
}
