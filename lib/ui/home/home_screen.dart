import 'package:facebook_flutter/data/mock_data.dart';
import 'package:facebook_flutter/ui/components/app_bar_action.dart';
import 'package:facebook_flutter/ui/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'components/stories_widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final _scrollController = ScrollController();
  double _staticHeight = 0.0;

  @override
  void initState() {
    _scrollController.addListener(() {
      _controllerFlag(_scrollController.offset.ceilToDouble());
    });
    super.initState();
  }

  void _controllerFlag(double value){
    var state = Provider.of<HomeController>(context, listen: false);
    state.flagVisibility(value);
    state.subtractImageSizeHeight(value);
    state.subtractImageSizeWidth(value);
    state.borderRadius(value);
    state.opacity(value);
    state.setMinSizeFlag(value);
  }

  @override
  Widget build(BuildContext context) {
    _staticHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            floating: true,
              snap: true,
              backgroundColor: Colors.white,
              title:  Text("facebook",
                style: TextStyle(
                    color: Colors.blue[700],
                    fontWeight: FontWeight.w700,
                    fontSize: 25
                ),
              ),
              actions: [
                Row(
                  children: const [
                    AppBarAction(img: "assets/search_icon.png"),
                    SizedBox(width: 10,),
                    AppBarAction(img: "assets/message_icon.png",),
                    SizedBox(width: 10,),
                  ],
                )
              ],
          )
        ],

        body: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              height: _staticHeight,
              width: constraints.maxWidth,
              child: SingleChildScrollView(
                child: Column(
                  children: [

                    Container(
                      padding: const EdgeInsets.all(12),
                      margin: const EdgeInsets.only(top: 0.2),
                      color: Colors.white,
                      height: _staticHeight * 0.10,
                      child: Row(
                        children: [
                          Container(
                            height: _staticHeight * 0.10,
                            width: _staticHeight * 0.10,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                                image: DecorationImage(image: NetworkImage(DataMock.userImg))
                            ),
                          ),

                          const Text("No que você esta pensando?")
                        ],
                      ),
                    ),


                    const SizedBox(height: 7,),

                    StoriesWidget(
                      staticHeight: _staticHeight,
                      scrollController: _scrollController,
                      constraints: constraints,
                    ),

                    ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: 10,
                        itemBuilder: (context, index){
                          return Container(
                            margin: const EdgeInsets.only(top: 3, left: 5, right: 5),
                            //padding: const EdgeInsets.all(8),
                            width: constraints.maxWidth,
                            height: 180,
                            color: Colors.white,
                          );
                        }
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}




