import 'package:flutter/material.dart';

class MyTextFieldEn extends StatelessWidget {
  const MyTextFieldEn({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search - Qidiruv',
      ),
    );
  }
}
