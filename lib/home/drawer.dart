import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeDrawer extends StatefulWidget {
  const HomeDrawer({super.key});

  @override
  State<HomeDrawer> createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const DrawerHeader(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                  ),
                  Text('ilham@gmail.com')
                ],
              ),
            ),
            const SizedBox(height: 100),
            ListTile(
              title: const Text("My Profile"),
              leading: const Icon(Icons.person),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Billing"),
              leading: const Icon(Icons.account_balance_wallet_rounded),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Settings"),
              leading: const Icon(Icons.settings),
              onTap: () {
                Get.toNamed('/settingsScreen');
              },
            ),
            ListTile(
              title: const Text("Help"),
              leading: const Icon(Icons.help_outlined),
              onTap: () {},
            ),
            ListTile(
              title: const Text("About"),
              leading: const Icon(Icons.menu_book_rounded),
              onTap: () {},
            ),
            ListTile(
              title: const Text("Log Out"),
              leading: const Icon(Icons.logout_sharp),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
