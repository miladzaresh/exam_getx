import 'package:flutter/material.dart';

class EmptyWidget extends StatelessWidget {
  final String title;

  EmptyWidget({required this.title});

  @override
  Widget build(BuildContext context) => Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
      );
}
