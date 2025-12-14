import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_auth_ui/shared_widgets/custom_button.dart';
import 'package:simple_auth_ui/shared_widgets/logo.dart';
import 'package:simple_auth_ui/views/signup_view.dart';

import '../app_colors.dart';
import '../shared_widgets/custom_textfield.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            left: 50,
            child: SvgPicture.asset("assets/images/Rectangle2.svg"),
          ),
          SvgPicture.asset("assets/images/Rectangle1.svg"),
          Center(
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * .2),
                Logo(),
                SizedBox(height: 25),
                Text(
                  "Welcome back!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 18),
                Text("Log in to existing LOGO account"),
                SizedBox(height: 40),
                CustomTextField(
                  hintText: "Email",
                  obsecureText: false,
                  prefixIcon: Icons.person_outline,
                ),
                CustomTextField(
                  hintText: "Password",
                  obsecureText: true,
                  prefixIcon: Icons.lock_outline,
                ),
                SizedBox(height: 7),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Forget password?",
                        style: TextStyle(color: AppColors.secondaryColor),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 32),
                CustomButton(labelText: "Login"),
                SizedBox(height: 30),
                Text("Or SignUp using"),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: SvgPicture.asset("assets/images/google.svg"),
                    ),
                    SizedBox(width: 15),
                    CircleAvatar(
                      child: SvgPicture.asset("assets/images/facebook.svg"),
                    ),
                    SizedBox(width: 15),
                    CircleAvatar(
                      child: SvgPicture.asset("assets/images/linkedin.svg"),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account ?"),
                    InkWell(
                      onTap: () {

                      },
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignupView(),));
                        },
                        child: Text(
                          "SignUp",
                          style: TextStyle(fontSize: 16,fontWeight:FontWeight.w400 ,color: AppColors.secondaryColor),
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
