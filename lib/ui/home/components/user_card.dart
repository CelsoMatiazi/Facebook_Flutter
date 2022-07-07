import 'package:facebook_flutter/data/mock_data.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final double width;
  const UserCard({
    Key? key,
    required this.width
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [

          LayoutBuilder(
            builder: (context, constraints){
              return Stack(
                alignment: Alignment.bottomCenter,
                children: [

                  SizedBox(
                    height: constraints.maxHeight * 0.75 ,
                    child: Column(
                      children: [
                        Container(
                          height: constraints.maxHeight * 0.63,
                          width: width,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(12),
                                topRight: Radius.circular(12),
                              ),
                              image: DecorationImage(
                                  image: NetworkImage(DataMock.userImg),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: width,
                          ),
                        )
                      ],
                    ),
                  ),

                  Positioned(
                    right: (width / 2) - 17.5 ,
                    child: Container(
                      alignment: Alignment.center,
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          color: Colors.blue[700],
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 3)
                      ),
                      child: const Icon(Icons.add, color: Colors.white,),
                    ),
                  ),

                ],
              );
            },
          ),

          Positioned(
              bottom: 10,
              child: Container(
                  alignment: Alignment.center,
                  width: 100,
                  child: const Text("Criar Story",
                    style: TextStyle(
                        color: Colors.black
                    ),
                  )
              )
          )


        ],
      ),
    );
  }
}
