import 'package:dogdom_app/utils/app_color.dart';
import 'package:flutter/material.dart';
import 'package:dogdom_app/models/features_item.dart';

class DiscoveryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 22,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FeaturesItem(
                    name: 'Nearby',
                    imageUrl: 'assets/illustrations/nearby.png',
                  ),
                  FeaturesItem(
                    name: 'Revelation',
                    imageUrl: 'assets/illustrations/revelation.png',
                  ),
                  FeaturesItem(
                    name: 'Bag',
                    imageUrl: 'assets/illustrations/bag.png',
                  ),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
