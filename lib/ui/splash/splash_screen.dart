import 'package:flutter/material.dart';
import 'package:translater/route.dart';
import 'package:translater/utils/app_utils.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    _navigateToMain(context);
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                AppIcons.logo,
                width: 99,
                height: 82,
              ),
            ),
            const SizedBox(
              height: 26,
            ),
            const Center(
              child: Text(
                'TRANSLATE ON THE GO',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF000000),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _navigateToMain(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacementNamed(context, RouteNames.select);
      },
    );
  }
}
