import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iz_iot/routes/routes.dart';
import 'package:iz_iot/src/controllers/theme_controller.dart'; // Import the theme controller

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController =
        Get.put(ThemeController()); // Initialize the ThemeController

    return Obx(() => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(), // Light theme
          darkTheme: ThemeData.dark(), // Dark theme
          themeMode: themeController.isDarkMode.value
              ? ThemeMode.dark
              : ThemeMode.light, // Dynamic theme mode
          initialRoute: AppRoutes.loginScreen,
          getPages: AppRoutes.routes, // Your Test widget
        ));
  }
}
