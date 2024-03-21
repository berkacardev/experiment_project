import 'package:experiment_project/feature/home/view/home_view.dart';
import 'package:experiment_project/product/init/app_initialize.dart';
import 'package:experiment_project/product/init/custom_localization.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await AppInitialize().makeInitialize();
  runApp(CustomLocalization(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const HomeView(),
    );
  }
}
