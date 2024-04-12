import 'package:aayurscan_minor/screens/ScannerPage/_scanner.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  var box = await Hive.openBox('mybox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomePage(
              screenData: 1,
              body: ScannerPage(),
            ),
      },
    );
  }
}
