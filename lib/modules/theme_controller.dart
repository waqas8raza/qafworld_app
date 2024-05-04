// import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qafworld_app/utils/app_themes.dart';

// Step 1: Create a ThemeController
class ThemeController extends GetxController {
  var currentTheme = ThemeData.light().obs;

  void changeTheme() {
    if (Get.isDarkMode) {
      Get.changeTheme(AppThemes.lightTheme);
      currentTheme.value = AppThemes.lightTheme;
    } else {
      Get.changeTheme(AppThemes.darkTheme);
      currentTheme.value = AppThemes.darkTheme;
    }
  }
}
