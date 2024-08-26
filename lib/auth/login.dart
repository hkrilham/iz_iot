import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iz_iot/widgets/my_button.dart';
import 'package:iz_iot/widgets/my_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 300,
                    width: 500,
                    child: Image.asset('assets/login.png'),
                  ),
                  MyTextFormField(
                    hintTex: 'Enter the email address...',
                    lebal: 'Email',
                    prefixIcon: const Icon(Icons.email),
                    controller: emailController,
                  ),
                  const SizedBox(height: 20),
                  MyTextFormField(
                    hintTex: 'Enter the password...',
                    lebal: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    controller: passwordController,
                  ),
                  const SizedBox(height: 20),
                  MyButton(
                    onTap: () {
                      Get.toNamed('/');
                    },
                    name: 'Login',
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
