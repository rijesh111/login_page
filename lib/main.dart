import 'package:flutter/material.dart';
import 'package:login_page/log_in.dart';

void main() {
  runApp(const Page());
}

class Page extends StatelessWidget {
  const Page({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Loog(),
    );
  }
}
