import 'package:flutter/material.dart';

class roundButton extends StatelessWidget {
  Color color;
  String heading;
  void Function()? onPressed;
  roundButton(
      {required this.color, required this.heading, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            '$heading',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
