import 'package:flutter/material.dart';
import 'package:modelo_app/src/ui/dashboard/dashboard.dart';
import 'package:modelo_app/utils/utils.dart';

class ButtonPrimary extends StatelessWidget with Utils {
  int? width;
  String? text;
  Color? color;
  ButtonPrimary({Key? key, required this.text, this.width, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    text ??= "Button";
    color ??= Colors.blue[900];
    width ??= 90;
    return Container(
      width: setWidth(context, widthPercent: width),
      height: 50,
      color: Colors.blue[900],
      child: ElevatedButton(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all<TextStyle>(
            TextStyle(fontSize: 20), // Establecer el tamaño de fuente
          ),
          // Otras propiedades de estilo, como backgroundColor, padding, etc.
        ),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => BottomNavigationBarExampleApp()));
        },
        child: Text(text!),
      ),
    );
  }
}
