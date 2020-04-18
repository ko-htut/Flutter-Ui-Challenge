import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Application {
  static SharedPreferences sp;
  static double screenWidth;
  static double screenHeight;
  static double statusBarHeight;
  static double bottomBarHeight;
  static GetIt getIt = GetIt.instance;

  static initSp() async {
    sp = await SharedPreferences.getInstance();
  }
  
}
