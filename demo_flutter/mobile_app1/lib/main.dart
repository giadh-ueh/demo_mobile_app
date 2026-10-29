import 'package:flutter/material.dart';

import 'Trang1.dart';
import 'Trang2.dart';
import 'Trang3.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trang chủ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFB52C35)),
        useMaterial3: true,
      ),
      home: Trang3(),
    );
  }
}
