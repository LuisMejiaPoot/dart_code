import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: MyHomePage(),
      ),
    );
  }
}

// Custom TextField caja de texto
class TextFieldCustom extends StatelessWidget {
  String? text;
  String? color;
  TextEditingController? textIn;

  TextFieldCustom({required this.text, this.textIn}); // Constructor

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

class ButtonCustom extends StatelessWidget {
  TextEditingController? textIn;
  TextEditingController? textIn2;
  ButtonCustom({this.textIn, this.textIn2}); // Constructor

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textName = TextEditingController();
  TextEditingController _textLastName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    Widget verticalSpace = SizedBox(height: 20.0);

    return Scaffold(
      body: Column(
        children: [
          verticalSpace,
          verticalSpace,
          Text('A random idea:'),
          Text(appState.current.asLowerCase),
          TextFieldCustom(
            text: "Nombre",
            textIn: _textName,
          ),
          verticalSpace,
          TextFieldCustom(text: "Apellido", textIn: _textLastName),
          ButtonCustom(
            textIn: _textName,
            textIn2: _textLastName,
          )
        ],
      ),
    );
  }
}
