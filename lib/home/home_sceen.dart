import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:iz_iot/home/drawer.dart';
import 'package:iz_iot/src/controllers/theme_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final ThemeController themeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/image.png'),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Next >",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber),
              ),
            ),
            Obx(() => Switch(
                  value: themeController.isDarkMode.value,
                  onChanged: (value) {
                    themeController.toggleTheme();
                  },
                ))
          ],
        ),
      ),
      drawer: const HomeDrawer(),
    );
  }
}
