import 'package:flutter/material.dart';
import 'package:flutter_kasir_super/core/core.dart';
import 'package:flutter_kasir_super/features/settings/setttings.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kasir SUPER',
      theme: LightTheme(AppColors.green).theme,
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
