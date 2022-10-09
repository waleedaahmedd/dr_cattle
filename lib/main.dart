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
    ..progressColor = CustomColors.color2
    ..backgroundColor = CustomColors.color1
    ..indicatorColor = CustomColors.color2
    ..textColor = CustomColors.color2
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
              primaryColor: CustomColors.color1,
              colorScheme: ThemeData().colorScheme.copyWith(
                secondary: CustomColors.color1,
                primary: CustomColors.color2,
              ),
              textTheme: const TextTheme(
              subtitle1: TextStyle(
              color: CustomColors.color1, // <-- TextFormField input color
              ),
            ),
              textSelectionTheme: const TextSelectionThemeData(
                cursorColor: CustomColors.color1, //<-- SEE HERE
              ),
              inputDecorationTheme: InputDecorationTheme(
                enabledBorder:  const OutlineInputBorder(borderSide: BorderSide(color: CustomColors.color2)),
               // border: ,
                suffixIconColor: CustomColors.color2,
                focusColor: CustomColors.color1,
                hintStyle: TextStyle(
                    color: CustomColors.tintColor1,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold),
                labelStyle: TextStyle(
                    color: CustomColors.color1,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold),
                focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: CustomColors.color1)),
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

