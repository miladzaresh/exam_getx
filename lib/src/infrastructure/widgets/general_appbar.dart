import 'package:flutter/material.dart';
class GeneralAppBar extends StatelessWidget {
  final String title;

  GeneralAppBar({required this.title});

  @override
  Widget build(BuildContext context) =>
      AppBar(
        title: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      );
}
