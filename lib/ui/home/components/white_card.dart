import 'package:flutter/material.dart';

class WhiteCard extends StatelessWidget {
  final double width;
  const WhiteCard({
    Key? key,
    required this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}