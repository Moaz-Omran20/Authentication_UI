import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_auth_ui/shared_widgets/logo.dart';

import 'login_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginView()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * .15),
                Logo(),
                Expanded(flex: 3, child: SizedBox()),
                Text(
                  "Lorem Ipsum ",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * .1,
                  width: MediaQuery.of(context).size.width * .8,
                  child: Text(
                    "Lorem Ipsum is a dummy text used as placeholder",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        Center(
          child: SvgPicture.asset(
            "assets/images/splash_image2.svg",
            height: 250,
          ),
        ),
        Positioned(
          bottom: 490,
          left: 70,
          top: 0,

          child: SvgPicture.asset("assets/images/line.svg"),
        ),
        Positioned(
          bottom: 150,
          left: 44,
          top: 0,
          child: SvgPicture.asset("assets/images/light.svg"),
        ),
        Positioned(
          bottom: 520,
          left: 120,
          top: 0,

          child: SvgPicture.asset("assets/images/line.svg"),
        ),
        Positioned(
          bottom: 180,
          left: 95,
          top: 0,
          child: SvgPicture.asset("assets/images/light.svg"),
        ),
      ],
    );
  }
}
