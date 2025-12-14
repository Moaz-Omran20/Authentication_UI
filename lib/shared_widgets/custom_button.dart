import 'package:flutter/material.dart';

import '../app_colors.dart';

class CustomButton extends StatelessWidget {

  final String labelText  ;

   const CustomButton({super.key, required this.labelText});

   @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: MediaQuery.of(context).size.height * .07,
        width: MediaQuery.of(context).size.width * .5,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              AppColors.primaryColor,
              AppColors.secondaryColor,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Center(
          child: Text(
            labelText,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
