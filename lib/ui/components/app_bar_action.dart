import 'package:flutter/material.dart';

class AppBarAction extends StatelessWidget {
  final String img;
  const AppBarAction({
    Key? key,
    required this.img
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 35,
      width: 35,
      decoration:  BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[300]!
      ),
      child: Image.asset(img),
    );
  }
}