import 'package:flutter/material.dart';

import 'screens/waves_wallet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontSize: 14,
            color: Color(0xffC4C6CB),
          ),
          bodyText2: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
          headline1: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      home: const WavesWalletScreen(),
    );
  }
}
