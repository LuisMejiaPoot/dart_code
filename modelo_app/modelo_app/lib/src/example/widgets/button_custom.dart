import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final TextEditingController? textIn;
  final TextEditingController? textIn2;
  ButtonCustom({this.textIn, this.textIn2}); // Constructor

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepOrange,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ElevatedButton(
        onPressed: () {
          print(textIn!.text);
          print(textIn2!.text);
          print("Boton presionado");
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
        ),
        child: Text('Guardar'),
      ),
    );
  }
}