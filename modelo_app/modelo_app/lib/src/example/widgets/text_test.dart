import 'package:flutter/material.dart';
import 'package:modelo_app/utils/utils.dart';

class TextTest extends StatelessWidget with Utils {
  final int? porcent;
  final String? text;
   TextTest({required this.text, this.porcent});

  @override
  Widget build(BuildContext context) {
    final widthScreen = setWidth(context, widthPercent: porcent!);

    return Container(
      width: widthScreen,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.blue,
          backgroundColor: Colors.white,
          elevation: 5,
        ),
        onPressed: () {
          print(widthScreen);
        },
        child: Text(text!),
      ),
    );
  }
}