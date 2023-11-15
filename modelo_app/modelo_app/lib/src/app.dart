import 'package:flutter/material.dart';
import 'package:modelo_app/src/ui/login/login.dart';

class App extends StatelessWidget {
  const App({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My app',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 20.0)),
      ),
      home: Scaffold(
        body: login(),
      ),
    );
  }
}
