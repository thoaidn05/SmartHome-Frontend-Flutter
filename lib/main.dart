import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_home/pages/index_page.dart';
import 'package:smart_home/pages/login_page.dart';
import 'package:smart_home/pages/register_page.dart';
import 'package:smart_home/providers/announcement_provider.dart';
import 'package:smart_home/providers/category_provider.dart';
import 'package:smart_home/providers/room_provider.dart';
import 'package:smart_home/themes/dark_mode.dart';
import 'package:smart_home/themes/light_mode.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => RoomProvider()),
      ChangeNotifierProvider(create: (context) => CategoryProvider()),
      ChangeNotifierProvider(create: (context) => AnnouncementProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      darkTheme: darkMode,
      home: IndexPage(),
      routes: {
        "/register-page": (context) => RegisterPage(),
        "/login-page": (context) => LoginPage(),
        "/index-page": (context) => IndexPage(),
      },
    );
  }
}
