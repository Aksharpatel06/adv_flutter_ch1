import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroProvider extends ChangeNotifier {

  bool iscliked = false;

  Future<void> setdata() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('isClicked', true);
    notifyListeners();
  }

  Future<void> getdata()
  async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    iscliked = preferences.getBool('isClicked') ?? false;
    notifyListeners();
  }

  IntroProvider()
  {
    getdata();
  }
}