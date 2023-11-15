import 'package:flutter/material.dart';
import 'package:modelo_app/utils/utils.dart';

class input extends StatelessWidget with Utils {
  final int? porcent;
  final String? text;
  input({required this.text, this.porcent});
  @override
  Widget build(BuildContext context) {
    final width = setWidth(context, widthPercent: porcent ?? 50);
    return Container(
        width: width,
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: text,
          ),
        ));
  }
}
