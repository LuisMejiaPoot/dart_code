import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(
      fontSize: 20,
      color: Colors.red,
    );

    int counter = 1;
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        elevation: 5.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // vertical
          crossAxisAlignment: CrossAxisAlignment.center, // horizontal
          children: [
            Text(
              "Numero de clicks:",
              style: style,
            ),
            Text(
              "$counter",
              style: style,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          print("Click $counter");
        },
        highlightElevation: 12,
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
    );
  }
}
