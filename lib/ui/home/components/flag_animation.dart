import 'package:facebook_flutter/data/mock_data.dart';
import 'package:facebook_flutter/ui/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FlagAnimation extends StatelessWidget {
  final double width;
  const FlagAnimation({Key? key, required this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var state = Provider.of<HomeController>(context);
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(state.userImageRadius),
                    bottomRight: Radius.circular(state.userImageRadius)
                ),
              ),
              child: Container(
                height: constraints.maxHeight * (0.9 - (state.userImageSizeSubtractHeight * 1.5)),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(state.userImageRadius),
                      bottomRight: Radius.circular(state.userImageRadius)
                  )
                ),
                child: Stack(
                  children: [
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        SizedBox(
                          height: constraints.maxHeight * (0.70 - state.userImageSizeSubtractHeight),
                          width: width * (1 - state.userImageSizeSubtractWidth),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(state.userImageMargin),
                                height: constraints.maxHeight * (0.63 - state.userImageSizeSubtractHeight),
                                width: width * (1 - state.userImageSizeSubtractWidth),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(
                                        state.userImageRadius),
                                    image: DecorationImage(
                                        image: NetworkImage(DataMock.userImg),
                                        fit: BoxFit.cover)),
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
                          right: ((width / 2) - 17.5) - (state.userImageSizeSubtractWidth * 60) ,
                          child: Container(
                            alignment: Alignment.center,
                            height: 35 - (state.userImageSizeSubtractHeight * 30),
                            width: 35 - (state.userImageSizeSubtractHeight * 30),
                            decoration: BoxDecoration(
                                color: Colors.blue[700],
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.white, width: 3)),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 20 - (state.userImageSizeSubtractHeight * 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                        bottom: 10,
                        child: Container(
                            alignment: Alignment.center,
                            width: width,
                            child: Text(
                              "Criar Story",
                              style: TextStyle(color: Colors.black.withOpacity(state.textOpacity)),
                            )
                        )
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
