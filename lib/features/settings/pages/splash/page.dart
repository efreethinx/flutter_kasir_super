import 'package:flutter/material.dart';
import 'package:flutter_kasir_super/core/core.dart';
import 'package:flutter_kasir_super/features/home/home.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3)).then(
      (value) => Navigator.pushNamedAndRemoveUntil(
        // ignore: use_build_context_synchronously
        context,
        HomePage.routeName,
        (route) => false,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              MainAssets.logo,
              width: Dimens.width(context) / 2,
            ),
            Dimens.defaultSize.height,
            HeadlineText(
              'Kasir SUPER',
              style: TextStyle(
                color: context.theme.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
