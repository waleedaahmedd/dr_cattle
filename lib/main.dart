import 'package:dr_cattle/route_generator.dart';
import 'package:dr_cattle/utils/custom_colors.dart';
import 'package:dr_cattle/view_models/auth_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.dualRing
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = CustomColors.grey
    ..backgroundColor = CustomColors.limePunch
    ..indicatorColor = CustomColors.grey
    ..textColor = CustomColors.grey
    ..maskColor = Colors.black.withOpacity(0.5)
    ..maskType = EasyLoadingMaskType.custom
    ..userInteractions = false
    ..toastPosition = EasyLoadingToastPosition.bottom
    ..dismissOnTap = false;
  // ..customAnimation = CustomAnimation();
}

void main() {
  configLoading();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (_) => AuthViewModel(),
      ),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        useInheritedMediaQuery: true,
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
              primaryColor: CustomColors.limePunch,
              colorScheme: ThemeData().colorScheme.copyWith(
                secondary: CustomColors.limePunch,
                primary: CustomColors.limePunch,
              ),
              textSelectionTheme: const TextSelectionThemeData(
                cursorColor: CustomColors.limePunch, //<-- SEE HERE
              ),
              inputDecorationTheme: InputDecorationTheme(
                //suffixIconColor: CustomColors.purple,
                focusColor: CustomColors.limePunch,
                hintStyle: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold),
                labelStyle: TextStyle(
                    color: CustomColors.limePunch,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: CustomColors.limePunch)),
              ),
            ),
            debugShowCheckedModeBanner: false,
            title: 'Welcome to PTMOSE',
            initialRoute: '/',
            onGenerateRoute: RouteGenerator.generateRoute,
            builder: EasyLoading.init(),
          );
        });
  }
}

