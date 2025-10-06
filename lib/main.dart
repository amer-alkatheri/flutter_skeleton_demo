import 'package:flutter/material.dart';
import 'package:skeleton/ui/views/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

/*
Skeleton Loading Demo by amer-alkatheri.com.
 */
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Skeleton Loading Demo by amer-alkatheri.com',
      debugShowCheckedModeBanner: false,
      home: SkeletonDemoHomePage(),
    );
  }
}










