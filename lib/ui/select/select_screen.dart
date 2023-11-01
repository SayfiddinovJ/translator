import 'package:flutter/material.dart';
import 'package:translater/route.dart';

class SelectScreen extends StatelessWidget {
  const SelectScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.english);
                },
                child: const Text('ENG - UZB')),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RouteNames.uzbek);
                },
                child: const Text('UZB - ENG')),
          ),
        ],
      ),
    );
  }
}
