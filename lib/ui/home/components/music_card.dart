import 'package:flutter/material.dart';

class MusicCard extends StatelessWidget {
  final double width;
  const MusicCard({
    Key? key,
    required this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 8),
      shape: RoundedRectangleBorder(
        side: const BorderSide(
            color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        alignment: Alignment.center,
        width: width,
        decoration:  BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.greenAccent,
                  Color(0xff249ED3)
                ]
            ),
            borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [


            Container(
                padding: const EdgeInsets.all(10),
                height: 45,
                width: 45,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle
                ),
                child: Image.asset("assets/music_notes.png")
            ),

            const SizedBox(height: 8,),

            const Text(
              "Música",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}