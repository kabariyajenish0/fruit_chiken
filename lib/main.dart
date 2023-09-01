import 'package:flutter/material.dart';
import 'package:fruit_chiken/page1.dart';
import 'package:fruit_chiken/page2.dart';

import 'bottom.dart';

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
      ),
      debugShowCheckedModeBanner: false,
      home: Bottom(),
    );
  }
}
