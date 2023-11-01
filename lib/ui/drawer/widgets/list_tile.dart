import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({
    super.key,
    required this.iconData,
    required this.title,
    required this.onTap,
  });
  final IconData iconData;
  final String title;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Icon(
          iconData,
          size: 24,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Color(0xFF010101),
          fontSize: 20,
        ),
      ),
    );
  }
}
