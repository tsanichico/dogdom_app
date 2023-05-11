import 'package:dogdom_app/utils/app_typography.dart';
import 'package:flutter/material.dart';

class FeaturesItem extends StatelessWidget {
  final String name;
  final String imageUrl;

  const FeaturesItem({required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          imageUrl,
          width: 50,
        ),
        Text(
          name,
          style: AppTypography.Body5,
        ),
      ],
    );
  }
}
