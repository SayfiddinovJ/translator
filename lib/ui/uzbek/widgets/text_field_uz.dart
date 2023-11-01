import 'package:flutter/material.dart';

class MyTextFieldUz extends StatelessWidget {
  const MyTextFieldUz({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Qidiruv - Search',
      ),
    );
  }
}
