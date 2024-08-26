import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iz_iot/src/controllers/theme_controller.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final ThemeController themeController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Center(
          child: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text("Theme"),
              trailing: Obx(() => Switch(
                    value: themeController.isDarkMode.value,
                    onChanged: (value) {
                      themeController.toggleTheme();
                    },
                  )),
            ),
          )
        ],
      )),
    );
  }
}
