import 'package:get/get.dart';
import 'package:iz_iot/auth/login.dart';
import 'package:iz_iot/home/home_sceen.dart';
import 'package:iz_iot/home/settings_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String loginScreen = '/loginScreen';
  static const String settings = '/settingsScreen';

  static final routes = [
    GetPage(
      name: home,
      page: () => HomeScreen(),
    ),
    GetPage(
      name: loginScreen,
      page: () => const LoginScreen(),
    ),
    GetPage(
      name: settings,
      page: () => const SettingsScreen(),
    ),
  ];
}
