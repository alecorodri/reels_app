import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reels_app/presentation/providers/discover_provider.dart';
import 'package:reels_app/presentation/screens/discover/discover_screen.dart';

import 'config/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(
        lazy: false,
        create: (_)=> DiscoverProvider()..loadNextPage())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme().getTheme(),
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Reels App'),
          ),
          body: const DiscoverScreen(),
        ),
      ),
    );
  }
}
