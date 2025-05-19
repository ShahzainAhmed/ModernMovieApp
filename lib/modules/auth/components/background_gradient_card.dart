import 'package:flutter/material.dart';
import 'package:modern_movie_app/resources/app_colors.dart';

class BackgroundGradientCard extends StatelessWidget {
  final Widget? child;

  const BackgroundGradientCard({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.center,
          colors: [
            AppColors.kGradient1,
            AppColors.kGradient2,
          ],
        ),
      ),
      child: child,
    );
  }
}
