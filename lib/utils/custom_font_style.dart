import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_colors.dart';

//google fonts
//google font, color white, size 45, bold
class GoogleFontText1 extends StatelessWidget {
  final String data;

  const GoogleFontText1({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          fontFamily: 'Rubik',
          fontSize: 45.sp,
          color: Colors.white,
          fontWeight: FontWeight.bold),
    );
  }
}

//google font, color white, size 12
class GoogleFontText2 extends StatelessWidget {
  final String data;

  const GoogleFontText2({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          fontFamily: 'Rubik',
          fontSize: 12.sp,
          color: Colors.white,
      ),
    );
  }
}

//google font, color orange, size 12, bold
class GoogleFontText3 extends StatelessWidget {
  final String data;

  const GoogleFontText3({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontFamily: 'Rubik',
        fontSize: 12.sp,
        color: CustomColors.color1,
        fontWeight: FontWeight.bold
      ),
    );
  }
}

//google font, color black, size 12, w800
class GoogleFontText4 extends StatelessWidget {
  final String data;

  const GoogleFontText4({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          fontFamily: 'Rubik',
          fontSize: 18.sp,
          color: CustomColors.color2,
          fontWeight: FontWeight.w800
      ),
    );
  }
}

//google font, color black, size 15, w500
class GoogleFontText5 extends StatelessWidget {
  final String data;

  const GoogleFontText5({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          fontFamily: 'Rubik',
          fontSize: 18.sp,
          color: CustomColors.color2,
          fontWeight: FontWeight.bold
      ),
    );
  }
}

//google font, color black, size 12
class GoogleFontText6 extends StatelessWidget {
  final String data;

  const GoogleFontText6({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          fontFamily: 'Rubik',
          fontSize: 12.sp,
          color: CustomColors.color2,
      ),
    );
  }
}



//normal fonts
//normal font, color white, size 14, bold
class NormalFontText1 extends StatelessWidget {
  final String data;

  const NormalFontText1({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          color: CustomColors.color2, fontWeight: FontWeight.bold, fontSize: 14.sp),
    );
  }
}

//normal font, color white, size 20, w400
class NormalFontText2 extends StatelessWidget {
  final String data;

  const NormalFontText2({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          color: CustomColors.color2, fontWeight: FontWeight.w400, fontSize: 20.sp),
    );
  }
}

//normal font, color black, size 14, bold
class NormalFontText3 extends StatelessWidget {
  final String data;

  const NormalFontText3({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
          color: CustomColors.color2, fontWeight: FontWeight.bold, fontSize: 14.sp),
    );
  }
}
