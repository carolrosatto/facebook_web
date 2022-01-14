// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final VoidCallback buttonFunction;

  CircleButton({
    required this.icon,
    required this.buttonFunction,
    required this.iconSize,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      margin: EdgeInsets.all(6),
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: buttonFunction,
        icon: Icon(
          icon,
          color: Colors.black,
          size: iconSize,
        ),
      ),
    );
  }
}
