import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ThemeController extends GetxController {
  // Observable variable to track the theme mode
  var isDarkMode = false.obs;

  // Toggle the theme mode
  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
    Get.changeThemeMode(isDarkMode.value ? ThemeMode.dark : ThemeMode.light);
  }
}
