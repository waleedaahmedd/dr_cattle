import 'package:dr_cattle/utils/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import '../utils/custom_buttons.dart';
import '../utils/shared_pref .dart';
import '../utils/custom_font_style.dart';
import '../view_models/auth_view_model.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SharedPref sharedPref = SharedPref();

    return Consumer<AuthViewModel>(
      builder: (_, authViewModel, __) {
        return Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 70, horizontal: 100),
                        child:Container(),
                      ),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                              color: CustomColors.grey,
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20.0))),
                          width: double.infinity,
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(bottom: 20.0),
                                child: GoogleFontText1(
                                  data: 'Login',
                                ),
                              ),
                              Column(
                                children: [
                                  const TextField(
                                    //controller: authViewModel.emailController,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        suffixIcon: Icon(
                                          Icons.alternate_email,
                                        ),
                                        hintText: 'EMAIL ADDRESS',
                                        /*errorText: authViewModel
                                                .getEmailValidateMessage.isEmpty
                                            ? null
                                            : authViewModel
                                                .getEmailValidateMessage*/),
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  TextField(
                                 /*   controller:
                                        authViewModel.passwordController,*/
                                    /*obscureText: authViewModel.getShowPassword,*/
                                    decoration: InputDecoration(
                                        border: const OutlineInputBorder(),
                                        suffixIcon: IconButton(
                                          onPressed: () {
                                         /*   authViewModel.setShowPassword(
                                                !authViewModel.getShowPassword);*/
                                          },
                                          icon: const Icon(
                                            Icons.remove_red_eye,
                                          ),
                                        ),
                                        hintText: 'PASSWORD',
                                     /*   errorText: authViewModel
                                                .getPasswordValidateMessage
                                                .isEmpty
                                            ? null
                                            : authViewModel
                                                .getPasswordValidateMessage*/),
                                  ),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero,
                                        ),
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushNamed('/forget_password');
                                        },
                                        child: const NormalFontText1(
                                          data: 'FORGOT PASSWORD?',
                                        ),
                                      )),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomButton1(
                                    text: 'SIGN IN',
                                    onPressed: () {
                                      /*FocusManager.instance.primaryFocus
                                          ?.unfocus();
                                      if (authViewModel.logInValidation() ==
                                          true) {
                                        authViewModel
                                            .callLoginApi()
                                            .then((value) {
                                          if (value == true) {
                                            if (authViewModel
                                                .getUserDataResponse
                                                .isVerified!) {
                                              EasyLoading.showSuccess(
                                                  authViewModel
                                                      .getLoginResponse
                                                      .loginData!
                                                      .loginUser!
                                                      .message!);
                                              authViewModel.setGuestUser(false);
                                              authViewModel.callUserName();
                                              Navigator.of(context)
                                                  .pushNamedAndRemoveUntil(
                                                      '/home',
                                                      ModalRoute.withName('/'));
                                            } else {
                                              EasyLoading.showSuccess(
                                                  authViewModel
                                                      .getLoginResponse
                                                      .loginData!
                                                      .loginUser!
                                                      .message!);
                                              authViewModel.setGuestUser(false);
                                              authViewModel.callUserName();
                                              Navigator.of(context)
                                                  .pushNamed('/otp');
                                            }
                                          } else {
                                            EasyLoading.showError(authViewModel
                                                .getLoginResponse
                                                .loginData!
                                                .loginUser!
                                                .message!);
                                          }
                                        });
                                      }*/

                                      /* Navigator.of(context).pushNamedAndRemoveUntil(
                                        '/home', ModalRoute.withName('/'));*/
                                    },
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),

                                /*  Row(
                                    children: [
                                      Expanded(
                                          child: Align(
                                              alignment: Alignment.centerRight,
                                              child: GestureDetector(
                                                onTap: () {
                                                  *//*authViewModel
                                                      .signInWithGoogle()
                                                      .then((value) {
                                                    if (value == true) {
                                                      EasyLoading.showSuccess(
                                                          authViewModel
                                                              .getSocialMediaLoginResponse
                                                              .data!
                                                              .socialMediaLogin!
                                                              .message!);
                                                      authViewModel
                                                          .setGuestUser(false);

                                                      authViewModel
                                                          .callUserName();
                                                      Navigator.of(context)
                                                          .pushNamedAndRemoveUntil(
                                                              '/home',
                                                              ModalRoute
                                                                  .withName(
                                                                      '/'));
                                                    } else {
                                                      EasyLoading.showError(
                                                          authViewModel
                                                              .getSocialMediaLoginResponse
                                                              .data!
                                                              .socialMediaLogin!
                                                              .message!);
                                                    }
                                                  });*//*
                                                },
                                                child: Image.asset(
                                                  'assets/images/connect_google.png',
                                                  height: 50.h,
                                                ),
                                              ))),
                                      SizedBox(
                                        width: 20.h,
                                      ),
                                      Expanded(
                                          child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: GestureDetector(
                                                onTap: () {
                                                 *//* authViewModel
                                                      .signInWithFacebook()
                                                      .then((value) {
                                                    if (value == true) {
                                                      EasyLoading.showSuccess(
                                                          authViewModel
                                                              .getSocialMediaLoginResponse
                                                              .data!
                                                              .socialMediaLogin!
                                                              .message!);
                                                      authViewModel
                                                          .setGuestUser(false);

                                                      authViewModel
                                                          .callUserName();
                                                      Navigator.of(context)
                                                          .pushNamedAndRemoveUntil(
                                                              '/home',
                                                              ModalRoute
                                                                  .withName(
                                                                      '/'));
                                                    } else {
                                                      EasyLoading.showError(
                                                          authViewModel
                                                              .getSocialMediaLoginResponse
                                                              .data!
                                                              .socialMediaLogin!
                                                              .message!);
                                                    }
                                                  });*//*
                                                },
                                                child: Image.asset(
                                                  'assets/images/connect_facebook.png',
                                                  height: 50.h,
                                                ),
                                              ))),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),*/
                                  CustomButton1(
                                    text: 'LOGIN AS GUEST',
                                    onPressed: () {
                                     /* authViewModel.setGuestUser(true);
                                      final prevUserData =
                                          sharedPref.read('userData');
                                      if (prevUserData != null) {
                                        sharedPref.remove('userData');
                                      }
                                      authViewModel.callUserName();
                                      Navigator.of(context)
                                          .pushNamedAndRemoveUntil('/home',
                                              ModalRoute.withName('/'));*/
                                    },
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  const NormalFontText1(
                                    data: 'NEW HERE?',
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed('/sign_up');
                                    },
                                    child: const GoogleFontText1(
                                      data: 'Sign Up >',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}