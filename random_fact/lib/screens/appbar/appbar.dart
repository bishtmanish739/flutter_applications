import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  final String title;
  const Appbar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Center(child: Text(title)), backgroundColor: Colors.green);
  }
}
