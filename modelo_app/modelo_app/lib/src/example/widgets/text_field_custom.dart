// Custom TextField caja de texto
import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final String? text;
  final String? color;
  final TextEditingController? textIn;

  TextFieldCustom({required this.text, this.textIn, this.color}); // Constructor

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textIn,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: text,
      ),
    );
  }
}
