import 'package:flutter/material.dart';

class Customtextfeild extends StatelessWidget {
  const Customtextfeild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder()
      ),
    );
  }
}
