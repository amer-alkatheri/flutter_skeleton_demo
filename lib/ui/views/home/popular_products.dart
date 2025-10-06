import 'package:flutter/material.dart';

import 'package:skeletonizer/skeletonizer.dart';

import 'package:skeleton/data/database.dart';
import 'package:skeleton/ui/cells/product_card.dart';


class PopularProducts extends StatelessWidget {
  final bool enabled;
  const PopularProducts({super.key,required this.enabled});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: sectionTitle("Popular Products", () {}),
        ),
        Skeletonizer(
          enabled: enabled,
          enableSwitchAnimation: true,
          ignoreContainers: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: demoProducts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 20,
                childAspectRatio: 0.7,
              ),
              itemBuilder: (context, index) {
                return ProductCard(
                  product: demoProducts[index],
                  onPress: () {},
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget sectionTitle(String title, GestureTapCallback press) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        TextButton(
          onPressed: press,
          style: TextButton.styleFrom(foregroundColor: Colors.grey),
          child: const Text("See more"),
        ),
      ],
    );
  }
}