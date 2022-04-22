import 'package:flutter/material.dart';
import 'package:ikreditt/app/components/bottombar/button.dart';

import 'model.dart';

typedef OnButtonPressCallback = void Function(int index);

class NavBarBody extends StatelessWidget {
  final List<BarItem> buttons;
  final int selectedIndex;
  final double iconSize;
  final Color? activeColor;
  final Color? inactiveColor;
  final OnButtonPressCallback onButtonPress;
  final Color backgroundColor;

  const NavBarBody({
    Key? key,
    required this.buttons,
    required this.selectedIndex,
    required this.iconSize,
    required this.activeColor,
    required this.inactiveColor,
    required this.onButtonPress,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double bottomPading = MediaQuery.of(context).padding.bottom;
    return Container(
      clipBehavior: Clip.hardEdge,
      height: 60 + bottomPading,
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: buttons.map(
          (BarItem item) {
            final int buttonIndex = buttons.indexOf(item);
            return NavBarButton(
              icon: item.icon,
              size: iconSize,
              title: item.title,
              activeColor: item.activeColor ?? activeColor!,
              inactiveColor: item.inactiveColor ?? inactiveColor!,
              index: buttonIndex,
              isSelected: buttonIndex == selectedIndex ? true : false,
              onTap: onButtonPress,
              slidingCardColor: backgroundColor,
              itemCount: buttons.length,
            );
          },
        ).toList(),
      ),
    );
  }
}
