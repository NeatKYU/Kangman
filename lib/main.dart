import 'package:flutter/material.dart';
import 'package:kangman/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            textStyle: TextStyle(
              fontSize: 30,
              color: Colors.black87,
            ),
          ),
        ),
      ),
      home: StartScreen(),
    );
  }
}
