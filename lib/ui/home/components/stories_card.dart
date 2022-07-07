import 'package:flutter/material.dart';

class StoriesCard extends StatelessWidget {

  final String name;
  final String userImg;
  final String storyImg;
  final double width;

  const StoriesCard({
    Key? key,
    required this.userImg,
    required this.storyImg,
    required this.name,
    required this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 8),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
              color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
            padding: const EdgeInsets.all(8),
            //height: 180,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: NetworkImage(storyImg),
                    fit: BoxFit.cover
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.blue[800]!, width: 3),
                      image: DecorationImage(
                          image: NetworkImage(userImg),
                          fit: BoxFit.cover
                      )
                  ),
                ),

                Text(name,
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w400
                  ),
                )
              ],
            )

        )
    );
  }
}