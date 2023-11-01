import 'package:flutter/material.dart';
import 'package:translater/route.dart';
import 'package:translater/ui/drawer/drawer_screen.dart';
import 'package:translater/ui/uzbek/widgets/text_field_uz.dart';

class UzbekScreen extends StatelessWidget {
  const UzbekScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFFFFFFF),
      drawer: const DrawerScreen(isEnglish: false),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF003366),
        title: const Text(
          'Til tarjimoni',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: Color(0xFFFFFFFF),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, RouteNames.english);
            },
            icon: const Icon(Icons.wifi_protected_setup_sharp),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const MyTextFieldUz(),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: [
                    ListTile(
                      onTap: () {},
                      title: const Text("ma'lumot"),
                    ),
                    ListTile(
                      onTap: () {},
                      title: const Text("ma'lumot"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
