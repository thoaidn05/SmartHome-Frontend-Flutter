import 'dart:developer';

import 'package:flutter/material.dart';

import '../components/sign_button.dart';
import '../components/text_field.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<RegisterPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  final confirmPasswordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.lock, size: 100),
                  const SizedBox(height: 50),
                  const Text("Let's create an account for you"),
                  const SizedBox(height: 25),
                  MyTextField(
                      controller: emailTextController,
                      hintText: "Email",
                      obscureText: false),
                  const SizedBox(height: 10),
                  MyTextField(
                      controller: passwordTextController,
                      hintText: "Password",
                      obscureText: true),
                  const SizedBox(height: 10),
                  MyTextField(
                      controller: confirmPasswordTextController,
                      hintText: "Confirm Password",
                      obscureText: true),
                  const SizedBox(height: 10),
                  SignButton(text: "Sign up", onTap: () {
                    Navigator.pushNamed(context, "/home-page");
                  }),
                  const SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      const SizedBox(width: 4),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/login-page");
                        },
                        child: const Text(
                          "Login now",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
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
