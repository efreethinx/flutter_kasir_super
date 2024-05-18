import 'package:flutter/material.dart';
import 'package:flutter_kasir_super/core/core.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

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
