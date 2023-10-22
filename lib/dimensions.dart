
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Dimensions{

  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageViewTextContainer= screenHeight/7.03;

  //dynamic height padding and margin
  static double height10 = screenHeight/84.4;
  static double height15 = screenHeight/56.27;
  static double height18 = screenHeight/46.89;
  static double height20 = screenHeight/32.2;
  static double height30 = screenHeight/28.13;
  static double height45 = screenHeight/18.76;
  static double height1_8 = screenHeight/468.89;

  //dynamic width padding and margin
  static double width10 = screenHeight/84.4;
  static double width15 = screenHeight/56.27;
  static double width18 = screenHeight/46.89;
  static double width20 = screenHeight/32.2;
  static double width30 = screenHeight/28.13;

  //dynamic font
  static double font16 = screenHeight/52.75;
  static double font20 = screenHeight/42.2;
  static double font26 = screenHeight/32.46;
  //dynamic radius
  static double radius20 = screenHeight/42.2;
  static double radius15 = screenHeight/56.27;
  static double radius30 = screenHeight/28.13;

  // icon Size
  static double iconSize24 = screenHeight/35.17;
  static double iconSize16 = screenHeight/52.75;

  //list view size
  static double listViewImgSize = screenWidth/3.25;
  static double listViewTextContSize = screenWidth/3.9;

  //popular food
  static double popularFoodImgSize = screenHeight/2.41;

  //bottom height
  static double bottomHeightBar = screenHeight/6.4;

  //splash screen dimensions
  static double splashImg = screenHeight/3.38;

}