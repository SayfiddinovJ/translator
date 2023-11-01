import 'package:flutter/material.dart';
import 'package:translater/ui/drawer/widgets/list_tile.dart';
import 'package:translater/utils/app_utils.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key, required this.isEnglish});

  final bool isEnglish;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFFFFFFF),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
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
          Center(
            child: Text(
              isEnglish ? 'TRANSLATE ON THE GO' : "YO'LDA TARJIMA",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xFF000000),
              ),
            ),
          ),
          const SizedBox(
            height: 91,
          ),
          MyListTile(
            iconData: Icons.share,
            title: isEnglish ? 'Share App' : 'Ilovani ulashish',
            onTap: () {},
          ),
          MyListTile(
            iconData: Icons.star_rate,
            title: isEnglish ? 'Rate Us' : 'Bizga baho bering',
            onTap: () {},
          ),
          MyListTile(
            iconData: Icons.privacy_tip,
            title: isEnglish ? 'Privacy Policy' : 'Maxfiylik siyosati',
            onTap: () {},
          ),
          MyListTile(
            iconData: Icons.feedback,
            title: isEnglish ? 'Feedback' : 'Fikr-mulohaza',
            onTap: () {},
          ),
          const Spacer(),
          Text(
            isEnglish ? 'Version 1.0' : "1.0 Versiyasi",
            style: const TextStyle(
              color: Color(0xFF737373),
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 19,
          ),
        ],
      ),
    );
  }
}
