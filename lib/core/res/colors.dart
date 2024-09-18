import 'dart:ui';

abstract class AppColors {

  static const Color primaryColor = Color(0xff004F1A);
  static const Color onPrimaryColor = Color(0xffffffff);
  static const Color grey = Color(0xff828282);
  static const Color lightGreen = Color(0xff88f2ab);
  static const Color lighterGreen = Color(0xffdcfee7);
  static const Color black = Color(0xff000000);

  //news colors
  static const Color brown = Color(0xffe98459);
  static const Color purple = Color(0xffd559e9);
  static const Color green = Color(0xff59e97f);
  static const Color wine = Color(0xffe95959);
  static const Color blue = Color(0xff59d8e9);
  static const Color yellow = Color(0xffe9e959);


  //this will contain the home colors that will be iterated against
  static const homeColors = [
    brown,
    purple,
    green,
    wine,
    blue,
    yellow
  ];


}