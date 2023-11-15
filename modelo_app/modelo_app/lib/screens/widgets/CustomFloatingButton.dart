// ignore: file_names
import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  final Function functionCustom;
  final IconData icon;
  const CustomFloatingButton(
      {super.key, required this.functionCustom, required this.icon});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => functionCustom(),
      highlightElevation: 12,
      backgroundColor: Colors.red,
      child: Icon(icon),
    );
  }
}
