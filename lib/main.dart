import 'package:flutter/material.dart';

import 'config/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme().getTheme(),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Reels App'),
        ),
        body: const Center(child: Text('Hello World!')),
      ),
    );
  }
}
