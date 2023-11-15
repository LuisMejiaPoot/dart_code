import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:modelo_app/src/example/widgets/forms/forms.dart';
import 'package:modelo_app/src/example/widgets/screens/firstScreen.dart'
    as first_screen;
import 'package:provider/provider.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.deepOrange, // Use primarySwatch for seedColor
          ),
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.deepOrange,
              foregroundColor: Colors.white,
              titleTextStyle: TextStyle(color: Colors.white, fontSize: 20.0)),
        ),
        home: first_screen.HomePage(),
      ),
    );
  }
}

class MyAppState extends ChangeNotifier {
  var current = WordPair.random();
}

class MyHomePage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _textName = TextEditingController();
  TextEditingController _textLastName = TextEditingController();

  // ignore: non_constant_identifier_names
  int? post_length;
  // ignore: prefer_typing_uninitialized_variables

  @override
  void initState() {
    super.initState();

/*     futureAxlbum = fetchAlbum(); */
  }

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    Widget verticalSpace = SizedBox(height: 20.0);

    return Scaffold(
        appBar: AppBar(
            title: Text('My first app'),
            backgroundColor: Colors.red,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20.0)),
        body: Column(
          children: [
            Buttons_(),
            TextFieldCustom_(),
            verticalSpace,
            TextFormFieldCustom_(),
            CheckBoxCustom_()
          ],
        ));
  }
}
