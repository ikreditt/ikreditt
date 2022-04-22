import 'package:flutter/material.dart';

Future<void> goTo(BuildContext context, Widget page) async{
  await Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}