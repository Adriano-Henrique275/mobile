import 'package:flutter/material.dart';
import 'package:mobile/modules/home_page/page/home_page.dart';
import 'package:mobile/modules/splashScreen/page/splash_screen.dart';

import 'modules/login_page/page/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fib Agro Tech',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue[900]!),
        useMaterial3: true,
      ),
      routes: {
        LoginPage.pageName: (context) => const LoginPage(),
        HomePage.pageName: (context) => const HomePage(),
      },
      home: const SplashScreen(),
    );
  }
}
