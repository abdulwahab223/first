import 'package:flutter/material.dart';
import 'package:login_page/app/carousel/main_file.dart';
import 'package:login_page/app/expense/MyExpense.dart';
import 'package:login_page/lottie_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Title',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: MainFile(),
    );
  }
}
