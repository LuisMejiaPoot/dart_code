import 'package:flutter/material.dart';

import 'widgets/widgets.dart';

class cardScreen extends StatelessWidget {
  const cardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Screen"),
      ),
      body: Example(),
    );
  }
}


class Example extends StatelessWidget {
  const Example({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      children: [CustomCardExample1()],
    );
  }
}
