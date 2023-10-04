import 'package:flutter/material.dart';
import 'package:modelo_app/src/example/widgets/screens/secondScreen.dart';
import 'package:modelo_app/utils/utils.dart';

class Buttons_ extends StatelessWidget with Utils {
  @override
  Widget build(BuildContext context) {
    var verticalSpace = setVerticalSpace(height: 20);
    return Column(
      children: [
        TextButtonCustom_(),
        verticalSpace,
        ElevatedButtonCustom_(),
        verticalSpace,
        OutlinedButtonCustom_(),
      ],
    );
  }
}

// ignore: camel_case_types
class TextButtonCustom_ extends StatelessWidget with Utils {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: setWidth(context, widthPercent: 90),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
            ),
            child: TextButton(
              child: Text("TextButton"),
              onPressed: () {
                print("TextButton");
              },
            )));
  }
}

// ignore: camel_case_types
class ElevatedButtonCustom_ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      child: Text("ElevatedButton"),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
      },
    ));
  }
}

// ignore: camel_case_types
class OutlinedButtonCustom_ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: OutlinedButton(
      child: Text("OutlinedButton"),
      onPressed: () {
        print("OutlinedButton");
      },
    ));
  }
}

class TextFieldCustom_ extends StatelessWidget with Utils {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: setWidth(context, widthPercent: 90),
      child: TextField(
        decoration: (InputDecoration(
            labelText: "Nombre",
            hintText: "Escribe tu nombre",
            icon: Icon(Icons.person))),
      ),
    ));
  }
}

class TextFormFieldCustom_ extends StatelessWidget with Utils {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: setWidth(context, widthPercent: 90),
            child: TextFormField(
              decoration: (InputDecoration(
                  labelText: "Email",
                  hintText: "Escribe tu correo",
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.email))),
            )));
  }
}

class CheckBoxCustom_ extends StatefulWidget {
  @override
  _CheckBoxCustomState createState() => _CheckBoxCustomState();
}

class _CheckBoxCustomState extends State<CheckBoxCustom_> with Utils {
  bool h = false;
  bool m = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: setWidth(context, widthPercent: 90),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Hombre"),
          Checkbox(
            value: h,
            onChanged: (value) {
              setState(() {
                h = value!;
              });
            },
          ),
          Text("Mujer"),
          Checkbox(
            value: m,
            onChanged: (value) {
              setState(() {
                m = value!;
              });
            },
          ),
        ]));
    /*   return Center(
      child: CheckboxListTile(
        title: Text("CheckBox"),
        value: _value,
        onChanged: (value) {
          setState(() {
            _value = value!;
          });
        },
      ),
    ); */
  }
}
