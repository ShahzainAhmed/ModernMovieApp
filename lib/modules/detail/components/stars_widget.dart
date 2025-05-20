import 'dart:math';

import 'package:flutter/material.dart';
import 'package:modern_movie_app/resources/app_colors.dart';

class StarsWidget extends StatelessWidget {

  const StarsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<double> ratingOptions = [2.6, 3.5, 4.5, 5.0];
    final double randomRating =
        ratingOptions[Random().nextInt(ratingOptions.length)];
    return Row(
      children: List.generate(5, (index) {
        if (index < randomRating.floor()) {
          return Icon(Icons.star, color: AppColors.kYellowColor, size: 12.0);
        } else if (index < randomRating && randomRating % 1 != 0) {
          return Icon(Icons.star_half,
              color: AppColors.kYellowColor, size: 12.0);
        } else {
          return Icon(Icons.star, color: AppColors.kSmokeColor, size: 12.0);
        }
      }),
    );
  }
}
