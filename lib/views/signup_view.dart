import 'package:flutter/material.dart';
import 'package:simple_auth_ui/shared_widgets/custom_button.dart';
import 'package:simple_auth_ui/shared_widgets/custom_textfield.dart';

import '../app_colors.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(backgroundColor: Colors.white),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Text(
              "Let’s Get Started!",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            Text("Create an account on MNZL to get all features"),
            SizedBox(height: 30),
            CustomTextField(
              hintText: "First Name",
              prefixIcon: Icons.person,
              obsecureText: false,
            ),
            CustomTextField(
              hintText: "Last name",
              prefixIcon: Icons.person,
              obsecureText: false,
            ),
            CustomTextField(
              hintText: "User name",
              prefixIcon: Icons.person,
              obsecureText: false,
            ),
            CustomTextField(
              hintText: "Email",
              prefixIcon: Icons.email,
              obsecureText: false,
            ),
            CustomTextField(
              hintText: "Confirm Password",
              prefixIcon: Icons.lock_open,
              obsecureText: true,
            ),
            CustomTextField(
              hintText: "Password",
              prefixIcon: Icons.lock_open,
              obsecureText: true,
            ),
            SizedBox(height: 33),
            CustomButton(labelText: "SignUp"),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(fontWeight: FontWeight.w400),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    "Login Here",
                    style: TextStyle(
                      color: AppColors.secondaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
