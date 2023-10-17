import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String pageName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: RichText(
        text: TextSpan(
          text: 'My home page',
          style: DefaultTextStyle.of(context).style,
        ),
      ),
    );
  }
}
