import 'package:flutter/material.dart';
import 'package:modelo_app/models/models.dart';
import 'package:modelo_app/screens/screens.dart';

class AppRoutes {
  static const initialRoute = "home";

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: "home", icon: Icons.home, name: "Home", screen: home_screen()),
    MenuOption(
        route: "card",
        icon: Icons.card_giftcard,
        name: "Card",
        screen: cardScreen()),
    MenuOption(
        route: "/alert",
        icon: Icons.alternate_email,
        name: "Alert",
        screen: AlertScreen()),
    MenuOption(
        route: "/listView1",
        icon: Icons.list,
        name: "ListView1",
        screen: ListView1Screen()),
    MenuOption(
        route: "listView2",
        icon: Icons.list_alt,
        name: "ListView2",
        screen: ListView2Screen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (var option in menuOptions) {
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen,
      });
    }
    return appRoutes;
  }

  static Map<String, Widget Function(BuildContext)> routes = {
    '/home': (BuildContext context) => home_screen(),
    '/card': (BuildContext context) => cardScreen(),
    '/alert': (BuildContext context) => AlertScreen(),
    '/listView1': (BuildContext context) => ListView1Screen(),
    '/listView2': (BuildContext context) => ListView2Screen(),
  };

  static Route<dynamic> onGenerateRoute(RouteSettings setting) {
    return MaterialPageRoute(builder: (context) => home_screen());
  }
}
