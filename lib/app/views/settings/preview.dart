import 'package:flutter/material.dart';
import 'package:ikreditt/app/config/constats.dart';

class SettingsPreview extends StatelessWidget {
  const SettingsPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(top: size.height * 0.08),
      width: size.width,
      decoration: const BoxDecoration(
        color: Color(0XFFEEEFFB),
      ),
      child: Column(
        children: [
          Text(appNameSmall, style: Theme.of(context).textTheme.headline1),
          Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Settings',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PreviewSettingsBox(
                  size: size,
                  icon: Icons.monetization_on,
                  title: 'Money',
                  onPressed: () {},
                ),
                PreviewSettingsBox(
                  size: size,
                  icon: Icons.monetization_on,
                  title: 'Money',
                  onPressed: () {},
                ),
                PreviewSettingsBox(
                  size: size,
                  icon: Icons.monetization_on,
                  title: 'Money',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PreviewSettingsBox extends StatelessWidget {
  const PreviewSettingsBox(
      {Key? key,
      required this.size,
      required this.icon,
      required this.title,
      required this.onPressed})
      : super(key: key);
  final Size size;
  final IconData icon;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.35,
      height: size.width * 0.35,
      margin: const EdgeInsets.only(right: 20, bottom: 16),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
        gradient: LinearGradient(
          colors: [
            Colors.red.withOpacity(0.9),
            Colors.pink.withOpacity(0.9),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            icon,
            size: size.width * 0.1,
            color: Colors.white,
          ),
          Center(
            child: Text(
              title,
              style: Theme.of(context).textTheme.headline4?.copyWith(
                    color: Colors.white,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
