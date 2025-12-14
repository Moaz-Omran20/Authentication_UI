import 'package:flutter/material.dart';

import '../app_colors.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;

  final IconData prefixIcon;

  final bool obsecureText;

  const CustomTextField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.obsecureText,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}


class _CustomTextFieldState extends State<CustomTextField> {

  late bool isObsecure = widget.obsecureText;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    isObsecure = widget.obsecureText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: TextField(
        obscureText: isObsecure,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xfff2f2f2),
          hint: Text(widget.hintText),
          prefixIcon: Icon(widget.prefixIcon),
          suffixIcon: widget.obsecureText ?IconButton(
            onPressed: () {
              setState(() {
                isObsecure = !isObsecure;
              });
            },
            icon: isObsecure ?Icon(Icons.remove_red_eye):Icon(Icons.remove_red_eye_outlined),
            color: isObsecure?Colors.grey:AppColors.primaryColor,
          ):null,
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0XFFF2F2F2)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryColor),
          ),
        ),
      ),
    );
  }
}
