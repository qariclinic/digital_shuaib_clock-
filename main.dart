import 'package:flutter/material.dart';
import 'digital_clock.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Digital Shuaib Clock",
      debugShowCheckedModeBanner: false,
      home: DigitalClock(),
    );
  }
}
