import 'package:flutter/material.dart';

import '../app_colors.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [AppColors.primaryColor, AppColors.secondaryColor],
      ).createShader(bounds),
      child: Text(
        "LOGO",
        style: TextStyle(
          color: Colors.white,
          fontSize: 70,
          fontWeight: FontWeight.w400,
          fontFamily: "Prime",
        ),
      ),
    );
  }
}
