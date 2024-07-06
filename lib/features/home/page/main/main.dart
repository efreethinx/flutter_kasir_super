import 'package:flutter/material.dart';
import 'package:flutter_kasir_super/core/core.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Beranda')),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(Dimens.dp24),
        child: Column(
          children: [
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  RegularText(
                    'Total Penjualan',
                    textAlign: TextAlign.center,
                  ),
                  RegularText('Rp. 50.000.000.000'),
                  RegularText('Lihat DetailO '),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
