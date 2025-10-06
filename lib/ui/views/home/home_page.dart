import 'package:flutter/material.dart';

import 'package:skeleton/ui/views/home/discount_banner.dart';
import 'package:skeleton/ui/views/home/header.dart';
import 'package:skeleton/ui/views/home/popular_products.dart';

class SkeletonDemoHomePage extends StatefulWidget {
  const SkeletonDemoHomePage({super.key});

  @override
  State<SkeletonDemoHomePage> createState() => _SkeletonDemoHomePageState();
}

class _SkeletonDemoHomePageState extends State<SkeletonDemoHomePage> {
  bool _enabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Skeleton Loading Demo')),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          _enabled
              ? Icons.hourglass_bottom_rounded
              : Icons.hourglass_disabled_outlined,
        ),
        onPressed: () {
          setState(() {
            _enabled = !_enabled;
          });
        },
      ),
      body:
      // _enabled ? Center(child: CircularProgressIndicator()) : //Uncomment this line to see normal loading.
          SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Column(
                children: [
                  Header(),
                  DiscountBanner(enabled: _enabled),
                  PopularProducts(enabled: _enabled),
                  SizedBox(height: 20),
                ],
              ),
            ),
    );
  }
}
