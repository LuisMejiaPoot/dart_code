import 'package:flutter/material.dart';
import 'package:modelo_app/src/ui/buttons/button_primary.dart';
import 'package:modelo_app/src/ui/inputs/input_login.dart';
import 'package:modelo_app/utils/utils.dart';

class login extends StatelessWidget with Utils {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: setWidth(context, widthPercent: 90),
                  child: Image.network(
                    'https://img.freepik.com/free-vector/sign-page-abstract-concept-illustration_335657-2242.jpg?t=st=1697587257~exp=1697587857~hmac=4300275c431304437c7e08fcc3a367ea8e10ebf616356d059dd438dad6eb8143',
                    width: setWidth(context, widthPercent: 90),
                    height: 200,
                  ),
                ),
                setVerticalSpace(height: 20.0),
                Container(child: input(text: "Email", porcent: 90)),
                setVerticalSpace(height: 20.0),
                Container(child: input(text: "Password", porcent: 90)),
                setVerticalSpace(height: 20.0),
                ButtonPrimary(
                  text: "Login",
                  width: 75,
                )
              ],
            )));
  }
}
