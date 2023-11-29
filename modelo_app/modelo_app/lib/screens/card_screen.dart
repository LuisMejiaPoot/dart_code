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
      children: [
        NotificationCustom(),
        CustomCardType2(
            title: "Hola mundo",
            imageUrl:
                "https://kajabi-storefronts-production.kajabi-cdn.com/kajabi-storefronts-production/blogs/18725/images/DAau3fjETFmAjLVaNl3B_FallLandscape7-.jpg")
      ],
    );
  }
}
