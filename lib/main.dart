import 'package:flutter/material.dart';
import 'package:skidkilife/configurations/themes/app_theme.dart';
import 'package:skidkilife/features/home/views/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.basic,
      home: const HomePage(),
    );
  }
}
