
import 'package:flutter/material.dart';

class FeedCard extends StatelessWidget {

  final String name;
  final String timeAgo;
  final String userImg;
  final String postTxt;
  final String? postImg;

  const FeedCard({
    Key? key,
    required this.name,
    required this.timeAgo,
    required this.userImg,
    required this.postTxt,
    this.postImg,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 3),
      width: double.maxFinite,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              height: 60,
              child: Row(
                children: [

                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[300]!,
                        shape: BoxShape.circle,
                        image: DecorationImage(image: NetworkImage(userImg), fit: BoxFit.cover)
                    ),
                  ),

                  const SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(name,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w800
                        ),),
                        Row(
                          children: [
                            Text(timeAgo,
                              style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey
                              ),),

                            const Icon(Icons.public,
                              size: 15,
                              color: Colors.grey,
                            )
                          ],
                        )

                      ],
                    ),
                  ),


                  const Text("•••", style: TextStyle(fontSize: 16),),
                  const SizedBox(width: 10,),
                  const Icon(Icons.close),
                ],
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(postTxt),
          ),

          const SizedBox(height: 10,),
          if(postImg != null)
          Container(
              color: Colors.grey[300],
              child: Image.network(postImg!)
          ),

          // if(postImg == null)
          // const SizedBox(height: 10,),


          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 30,
            child: Row(
              children: [
                  Image.asset("assets/like.png", width: 20,),
                  Image.asset("assets/love.png", width: 20,),
                  Image.asset("assets/wow.png", width: 20,),
                  const SizedBox(width: 3,),
                  const Text("16"),
                  const Spacer(),
                  const Text("2 comentários")

              ],
            ),
          ),


          const Divider(height: 5,),

          SizedBox(
            height: 35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [

                Icon(Icons.thumb_up_alt_outlined, size: 20, color: Colors.grey[600],),
                const SizedBox(width: 8,),
                const Text('Curtir'),

                const SizedBox(width: 35,),
                Icon(Icons.chat_bubble_outline, size: 20, color: Colors.grey[600],),
                const SizedBox(width: 8,),
                const Text('Comentar'),

                const SizedBox(width: 35,),
                Icon(Icons.send_rounded, size: 20, color: Colors.grey[600],),
                const SizedBox(width: 8,),
                const Text('Enviar')

              ],
            ),
          )
        ],
      ),

    );
  }
}

