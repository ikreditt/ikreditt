import 'package:flutter/material.dart';
import 'package:ikreditt/app/components/bottombar/bottombar.dart';
import 'package:ikreditt/app/views/account/root.dart';
import 'package:ikreditt/app/views/home/root.dart';
import 'package:ikreditt/app/views/pay/root.dart';

class IkreditRoot extends StatefulWidget {
  const IkreditRoot({Key? key}) : super(key: key);

  @override
  _IkreditRootState createState() => _IkreditRootState();
}

class _IkreditRootState extends State<IkreditRoot> {
  final PageController _pageController = PageController();
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: pages,
      ),
      bottomNavigationBar: SlidingClippedNavBar(
        barItems: barItems,
        selectedIndex: selectedIndex,
        onButtonPressed: bottomBarPressed,
        activeColor: Colors.black,
        inactiveColor: Colors.black,
        backgroundColor: Colors.white,
      ),
    );
  }

  final pages = const [HomePage(), PayPage(), AccountPage()];

  final barItems = [
    BarItem(
      icon: Icons.home_outlined,
      title: 'Home',
    ),
    BarItem(
      icon: Icons.done_all_outlined,
      title: 'Pay',
    ),
    BarItem(
      icon: Icons.person_outline_rounded,
      title: 'Account',
    ),
  ];

  void bottomBarPressed(int index) {
    setState(() {
      selectedIndex = index;
    });
    _pageController.animateToPage(
      selectedIndex,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeOutQuad,
    );
  }
}
