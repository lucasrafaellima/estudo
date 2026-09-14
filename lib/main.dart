import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar ({required this.title, super.key});

  final Widget title;

  Widget build(BuildContext context) {
    return Container (
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row (
        children: [

        ]
      )
    );
  }

}
