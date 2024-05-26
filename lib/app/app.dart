import 'package:flutter/material.dart';
import 'package:flutter_kasir_super/core/core.dart';
import 'package:flutter_kasir_super/features/home/page/main/main.dart';
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
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case HomePage.routeName:
            return MaterialPageRoute(builder: (context) {
              return const HomePage();
            });
          default:
            return MaterialPageRoute(builder: (context) {
              return const Scaffold(
                body: Center(
                    child: RegularText(
                  'Page Not Found',
                  textAlign: TextAlign.center,
                )),
              );
            });
        }
      },
    );
  }
}
