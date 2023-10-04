import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Regresar"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
