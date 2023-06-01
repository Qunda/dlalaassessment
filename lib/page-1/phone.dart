import 'package:flutter/material.dart';
import '../links/playLinks.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    const baseWidth = 393;
    final fem = MediaQuery.of(context).size.width / baseWidth;

    return Container(
      // BG image
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            'assets/page-1/images/converted-1-bg.png',
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            width: 300 * fem,
            child: Column(
              children: const [
                CustomButton(
                  text: 'Play',
                  icon: Icons.home,
                  key: null,
                ),
                CustomButton(
                  text: 'Inbox',
                  icon: Icons.email,
                  key: null,
                ),
                CustomButton(
                  text: 'Draw',
                  icon: Icons.calendar_month_sharp,
                  key: null,
                ),
                CustomButton(
                  text: 'Profile',
                  icon: Icons.person_2_sharp,
                  key: null,
                ),
                CustomButton(
                  text: 'Share',
                  icon: Icons.share,
                  key: null,
                ),
                CustomButton(
                  text: 'Logout',
                  icon: Icons.logout_sharp,
                  key: null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
