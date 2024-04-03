import 'package:aayurscan_minor/screens/ScannerPage/_scanner.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => const HomePage(screenData: 1, body: ScannerPage(),),
      },
    );
  }
}