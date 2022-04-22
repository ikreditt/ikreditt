import 'package:flutter/material.dart';
import 'package:ikreditt/app/config/theme.dart';
import 'package:ikreditt/app/views/home/root.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IKREDIT',
      debugShowCheckedModeBanner: false,
      theme: IKreditheme.lightTheme,
      home: const HomePage(),
    );
  }
}
