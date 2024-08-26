import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String? name;
  final VoidCallback? onTap;
  const MyButton({super.key, required this.name, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.maxFinite,
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.deepPurpleAccent,
        ),
        child: Text(
          name!,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
