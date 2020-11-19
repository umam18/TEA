import "package:flutter/widgets.dart";

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double blockHorizontal;
  static double blockVertical;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;

    //Check Orientation Potrait Or Landscape (2 : 3)
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      blockHorizontal = screenWidth / 200;
      blockVertical = screenHeight / 200;
    } else {
      blockHorizontal = screenWidth / 300;
      blockVertical = screenHeight / 300;
    }
  }
}
