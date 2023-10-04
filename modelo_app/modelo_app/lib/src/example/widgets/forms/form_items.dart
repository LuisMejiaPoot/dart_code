import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:modelo_app/utils/utils.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget verticalSpace = SizedBox(height: 20.0);
    return Container(
      child: Column(
        children: [
          TextButtonCustom(),
          verticalSpace,
          ElevatedButtonCustom(),
          verticalSpace,
          OutlinedButtonCustom()
        ],
      ),
    );
  }
}

class TextButtonCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              padding:
                  MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(15)),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: Text("TextButton")),
      ),
    );
  }
}

class ElevatedButtonCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
      onPressed: () {
        print("ElevatedButton");
      },
      child: Text("ElevatedButton"),
    ));
  }
}

class OutlinedButtonCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {},
        style: ButtonStyle(
            side: MaterialStateProperty.all<BorderSide>(
              BorderSide(
                color: Colors.orangeAccent.shade700,
                width: 2,
              ),
            ),
            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.deepOrange)),
        child: Text("OutlinedButton"),
      ),
    );
  }
}

class TextBoxs extends StatelessWidget with Utils {
  @override
  Widget build(BuildContext context) {
    var widthScreen = setWidth(context, widthPercent: 80);
    return Container(
      width: widthScreen,
      child: Column(
        children: [
          TextFieldCustom(),
          setVerticalSpace(height: 20),
          TextFormFieldCustom(),
        ],
      ),
    );
  }
}

class TextFieldCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.black45),
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          labelText: 'TextField',
          hintText: "HintText"),
    );
  }
}

class TextFormFieldCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.person),
        border: OutlineInputBorder(),
        labelText: 'TextFormField',
      ),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _DropdownButtonExampleState createState() => _DropdownButtonExampleState();
}

// ignore: camel_case_types
class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  final List<String> list = ['One', 'Two', 'Free', 'Four'];
  var dropdownValue;

  @override
  void initState() {
    super.initState();
    dropdownValue = list.first;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        child: Row(
          children: <Widget>[
            Expanded(
                child: DropdownButton<String>(
              value: dropdownValue,
              padding: EdgeInsets.all(10),
              /*        icon: const Icon(
                Icons.arrow_downward,
                weight: 400,
              ), */
              elevation: 16,
              style: const TextStyle(color: Colors.deepOrange),
              underline: Container(
                height: 2,
                color: Colors.deepOrangeAccent,
              ),
              items: list.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
            )),
            Icon(
              Icons.arrow_downward,
              color: Colors.deepOrange,
            )
          ],
        ));
  }
}

class CheckBoxCustom extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _CheckBoxCustomState createState() => _CheckBoxCustomState();
}

class _CheckBoxCustomState extends State<CheckBoxCustom> with Utils {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> inteColor = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused
      };
      if (states.any(inteColor.contains)) {
        return Colors.deepOrange;
      }
      return Colors.deepOrange;
    }

    return Center(
        child: Container(
            width: setWidth(context, widthPercent: 80),
            decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text("CheckBox"),
                SizedBox(
                  width: 20,
                ), // agregamos una separacion de 20 unidades
                Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.resolveWith(getColor),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value;
                    });
                  },
                )
              ],
            )));
  }
}

class RadioButtonCustom extends StatefulWidget {
  const RadioButtonCustom({super.key});
  @override
  State<RadioButtonCustom> createState() => _RadioButtonCustomState();
}

enum SingingCharacter { lafayette, jefferson }

class _RadioButtonCustomState extends State<RadioButtonCustom> with Utils {
  SingingCharacter? _character = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: setWidth(context, widthPercent: 80),
      child: Column(children: [
        ListTile(
          title: const Text('Lafayette'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Thomas Jefferson'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.lafayette,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                value = value;
              });
            },
          ),
        ),
      ]),
    ));
  }
}
