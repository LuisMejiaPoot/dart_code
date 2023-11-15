import 'package:flutter/material.dart';
import 'package:modelo_app/screens/widgets/CustomFloatingButton.dart';

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function reset;
  const CustomFloatingActions(
      {Key? key,
      required this.increaseFn,
      required this.decreaseFn,
      required this.reset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround, // horizontal
      //crossAxisAlignment: CrossAxisAlignment.stretch, // vertical
      children: [
        CustomFloatingButton(
            functionCustom: increaseFn, icon: Icons.exposure_plus_1_outlined),
        CustomFloatingButton(
            functionCustom: reset, icon: Icons.exposure_zero_outlined),
        CustomFloatingButton(
            functionCustom: decreaseFn, icon: Icons.exposure_minus_1_outlined),
      ],
    );
  }
}
