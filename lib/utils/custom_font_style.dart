import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_colors.dart';

//google fonts
//google font, color blue, size 25, w400
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
          fontFamily: 'MontaguSlab',
          fontSize: 25.sp,
          color: CustomColors.color1,
          fontWeight: FontWeight.w400),
    );
  }
}

//google font, color blue, size 25, w400
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
          fontFamily: 'MontaguSlab',
          fontSize: 25.sp,
          color: CustomColors.color2,
          fontWeight: FontWeight.w400),
    );
  }
}

//google font, color white, size 20, w400
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
          fontSize: 20.sp,
          color: Colors.white,
          fontFamily: 'MontaguSlab',
          fontWeight: FontWeight.w400),
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
