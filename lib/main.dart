import 'package:flutter/material.dart';
import 'package:gmail_clone/screens/home/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: SafeArea(
          child: HomePage(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
