import 'package:flutter/material.dart';
import 'package:modelo_app/router/app_router.dart';

class home_screen extends StatelessWidget {
  home_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
        automaticallyImplyLeading: false,
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, index) {
            final route = AppRoutes.menuOptions[index];
            return ListTile(
              leading: Icon(
                route.icon,
                color: Theme.of(context).primaryColor,
              ),
              title: Text(route.name,
                  style: Theme.of(context).textTheme.bodyLarge),
              onTap: () {
                //final route_ =
                // MaterialPageRoute(builder: (context) => route.screen);
                //Navigator.push(context, route_);
                Navigator.pushNamed(context, route.route);
              },
            );
          },
          separatorBuilder: ((_, __) => Divider()),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
