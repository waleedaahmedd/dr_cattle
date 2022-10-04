import 'package:dr_cattle/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasySplashScreen(
      logo: Image.network(
          'https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/flutter-512.png',color: CustomColors.color1,),
      title:  Text(
        'Doctor Cattle',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 40.sp,
          fontFamily: 'MontaguSlab',
        ),
      ),
      backgroundColor: CustomColors.color2,
      showLoader: true,
      loadingText: const Text("Loading...",style: TextStyle(color: CustomColors.color1),),
      navigator: const LoginScreen(),
      durationInSeconds: 5,
      loaderColor: CustomColors.color1,
    );
  }
}
