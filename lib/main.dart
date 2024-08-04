import 'package:classseven/src/views/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await _initHive();
  runApp(const MyApp());
}

Future<void> _initHive() async {
  await Hive.initFlutter();
  await Hive.openBox("login");
  await Hive.openBox("accounts");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(32, 63, 129, 1.0),
        ),
      ),
      home: const Login(),
    );
  }
}
