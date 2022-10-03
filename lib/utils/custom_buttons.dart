import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_colors.dart';

class CustomButton1 extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton1({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              //to set border radius to button
              borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}

class CustomButton2 extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton2({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
          shape: RoundedRectangleBorder(
            //to set border radius to button
              borderRadius: BorderRadius.circular(10)),
        ),
        onPressed: onPressed,
        child: Text(text,style:  TextStyle(color: CustomColors.grey),),
      ),
    );
  }
}
