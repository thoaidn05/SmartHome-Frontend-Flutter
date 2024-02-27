import 'dart:developer';

import 'package:flutter/material.dart';

import '../components/sign_button.dart';
import '../components/text_field.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.lock, size: 100),
                const SizedBox(height: 50),
                const Text("Welcome back, you've been missed!"),
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
                SignButton(text: "Sign in", onTap: () {
                  Navigator.pushNamed(context, "/home-page");
                }),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member?",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "/register-page");
                      },
                      child: const Text(
                        "Register now",
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
    );
  }
}
