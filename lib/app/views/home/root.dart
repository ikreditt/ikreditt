import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ikreditt/app/components/draggable_home/root.dart';
import 'package:ikreditt/app/views/home/body/root.dart';
import 'package:ikreditt/app/views/settings/preview.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool settingsOpened = false;
  bool leadingPressed = false;
  late final ScrollController _scrollController = ScrollController(
    initialScrollOffset: getAppBarHeight(),
  );

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DraggableHome(
      backgroundColor: Colors.white,
      scrollController: _scrollController,
      fullyStretchable: true,
      alwaysShowLeadingAndAction: true,
      leadingPressed: leadingPressed,
      curvedBodyRadius: 10,
      leading: IconButton(
        onPressed: openCloseSettings,
        icon: settingsOpened ? const Icon(Icons.close) : const Icon(Icons.menu),
        color: Colors.black,
      ),
      title: buildTitle(context),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.help_outline_rounded,
            color: Colors.black,
          ),
        )
      ],
      headerWidget: const SettingsPreview(),
      body: const [
        HomeBody(),
      ],
      expandedBody: const Center(),
    );
  }

  Text buildTitle(BuildContext context) {
    return Text(
      'ikreditt',
      style: Theme.of(context).appBarTheme.toolbarTextStyle,
    );
  }

  double getAppBarHeight() {
    final double expandedHeight = MediaQuery.of(context).size.height * 0.35;
    return (expandedHeight - kToolbarHeight);
  }

  void openCloseSettings() {
    setState(() => leadingPressed = !leadingPressed);
    double to = (settingsOpened ? getAppBarHeight() : 0);
    _scrollController.animateTo(to,
        duration: const Duration(milliseconds: 500), curve: Curves.ease);
    setState(() => settingsOpened = !settingsOpened);
    Timer(
      const Duration(milliseconds: 600),
      () => setState(() => leadingPressed = !leadingPressed),
    );
  }
}
