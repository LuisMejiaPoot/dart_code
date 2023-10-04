import 'package:flutter/material.dart';
import 'package:modelo_app/src/example/widgets/screens/secondScreen.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        body: Center(
            child: Column(
          children: [
            Text("Bienvenido a la primera pantalla"),
            ElevatedButton(
              child: Text("Ir a la segunda pantalla"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SecondScreen()),
                );
              },
            ),
          ],
        )));
  }
}

