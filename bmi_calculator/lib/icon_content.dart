import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {

  IconContent({this.icon,required this.text});
  final IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:<Widget>[
        Icon(
          icon,
          size:80.0,
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}