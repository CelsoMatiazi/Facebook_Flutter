import 'package:facebook_flutter/data/mock_data.dart';
import 'package:facebook_flutter/ui/home/components/stories_card.dart';
import 'package:facebook_flutter/ui/home/components/user_card.dart';
import 'package:facebook_flutter/ui/home/components/white_card.dart';
import 'package:facebook_flutter/ui/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'flag_animation.dart';
import 'music_card.dart';


class StoriesWidget extends StatelessWidget {
  final BoxConstraints constraints;
  const StoriesWidget({
    Key? key,
    required this.constraints,
    required double staticHeight,
    required ScrollController scrollController,
  }) : _staticHeight = staticHeight, _scrollController = scrollController, super(key: key);

  final double _staticHeight;
  final ScrollController _scrollController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _staticHeight * 0.33,
      color: Colors.white,
      child:  DefaultTabController(
        length: 2,
        child: Column(
          children:  [

            const SizedBox(
              height: 40,
              child: TabBar(
                tabs: [
                  Tab(child: Text("Stories", style: TextStyle(color: Colors.black),)),
                  Tab(child: Text("Reels", style: TextStyle(color: Colors.black),))
                ],
              ),
            ),

            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.grey[200]!,
                          Colors.white
                        ]
                    )
                ),
                child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Consumer<HomeController>(
                        builder: (_,value,__) {
                          return Stack(
                            children: [

                              ListView.builder(
                                  controller: _scrollController,
                                  scrollDirection: Axis.horizontal,
                                  itemCount: DataMock.stories.length + 2,
                                  itemBuilder: (context, index){

                                    if(index == 0) return MusicCard(width: constraints.maxWidth * 0.27);
                                    if(index == 1) {
                                      if(value.showFlag) return WhiteCard(width: constraints.maxWidth * 0.27);
                                      return UserCard(width: constraints.maxWidth * 0.27);
                                    }

                                    return StoriesCard(
                                      width: constraints.maxWidth * 0.27,
                                      name: DataMock.stories[index - 2].userName,
                                      userImg: DataMock.stories[index - 2].userImg,
                                      storyImg: DataMock.stories[index - 2].storyImg,
                                    );
                                  }
                              ),


                              if(value.showFlag)
                                FlagAnimation(
                                    width: constraints.maxWidth * 0.27
                                )


                            ],
                          );
                        },
                      ),

                      //reels
                      Container(
                        margin: const EdgeInsets.all(10),
                        color: Colors.green,
                      )
                    ]
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}