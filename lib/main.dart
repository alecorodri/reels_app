import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reels_app/infraestructure/datasources/local_video_datasource_impl.dart';
import 'package:reels_app/infraestructure/repositories/video_posts_repository_impl.dart';
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

    final videoPostRepository = VideoPostRepositoryImpl(videoPostDatasource: LocalVideoDatasourceImpl());

    return MultiProvider(
      providers: [ChangeNotifierProvider(
        lazy: false,
        create: (_)=> DiscoverProvider(videoPostRepository: videoPostRepository)..loadNextPage())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme().getTheme(),
        home: const Scaffold(
          // appBar: AppBar(
          //   centerTitle: true,
          //   title: const Text('Reels App'),
          // ),
          body:  DiscoverScreen(),
        ),
      ),
    );
  }
}
