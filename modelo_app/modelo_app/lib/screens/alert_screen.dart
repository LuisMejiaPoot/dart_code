import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialog(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text(
            "Titulo",
            style: TextStyle(color: Colors.black),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Este es un mensaje de alerta",
                  style: TextStyle(color: Colors.black)),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancelar")),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Aceptar")),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Alert Screen"),
        ),
        body: Center(
            child: ElevatedButton(
          child: Text("Mostrar alerta"),
          onPressed: () {
            displayDialog(context);
          },
        )),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }
}
