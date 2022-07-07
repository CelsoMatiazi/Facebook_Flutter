
import 'package:flutter/cupertino.dart';

class HomeController extends ChangeNotifier {

  bool showFlag = false;
  double userImageSizeSubtractHeight = 0;
  double userImageSizeSubtractWidth = 0;
  double userImageMargin = 2;
  double userImageRadius = 12;
  double textOpacity = 1.0;

  void flagVisibility(double value){
    if(value > 100){
      showFlag = true;
    }else{
      showFlag = false;
    }
    notifyListeners();
  }

  void subtractImageSizeHeight(double value){
    if(value > 100 && value < 180){
      userImageSizeSubtractHeight = (value - 100)/200;
      userImageMargin = (value - 100)/15;
    }
    notifyListeners();
  }

  void subtractImageSizeWidth(double value){
    if(value > 120 && value < 180){
      userImageSizeSubtractWidth = (value - 120)/130;
    }
    notifyListeners();
  }



  void borderRadius(double value){
    if(value > 130 && value < 180){
      userImageRadius = (value - 100)/2;
    }
    notifyListeners();
  }

  void opacity(double value){
    if(value > 110 && value < 140){
      textOpacity = 1 - (value - 110)/30;
    }
    notifyListeners();
  }

  void setMinSizeFlag(double value){
    if(value > 190){
      textOpacity = 0;
      userImageSizeSubtractHeight = (180 - 100)/200;
      userImageSizeSubtractWidth = (180 - 120)/130;
      userImageMargin = (180 - 100)/15;
      userImageRadius = (180 - 100)/2;
      notifyListeners();
    }
  }

}