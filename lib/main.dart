import 'package:flutter/material.dart';
import 'package:uidesign02/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ui tutorial 01',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
