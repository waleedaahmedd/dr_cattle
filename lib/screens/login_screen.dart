import 'package:dr_cattle/utils/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:provider/provider.dart';
import '../utils/custom_buttons.dart';
import '../utils/custom_font_style.dart';
import '../view_models/auth_view_model.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthViewModel>(
      builder: (_, authViewModel, __) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(gradient: CustomColors.gradientColor1),
            child: SafeArea(
              child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 100, horizontal: 60),
                          child: Text(
                            'Doctor Cattle',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 30.sp,
                              fontFamily: 'MontaguSlab',
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.white,
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
                                    IntlPhoneField(
                                      dropdownTextStyle: const TextStyle(color:  CustomColors.color1),

                                      dropdownIcon: const Icon(Icons.arrow_drop_down_outlined ,color: CustomColors.color1,),
                                      //controller: authViewModel.emailController,
                                      decoration: const InputDecoration(
                                       // border: OutlineInputBorder(),
                                        suffixIcon: Icon(
                                          Icons.phone_outlined,
                                        ),
                                        hintText: 'PHONE NUMBER',
                                      ),
                                      initialCountryCode: 'PK',
                                      onChanged: (phone) {
                                        print(phone.completeNumber);
                                      },
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    TextField(
                                      decoration: InputDecoration(
                                       // border: const OutlineInputBorder(),
                                        suffixIcon: IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                            Icons.remove_red_eye,
                                          ),
                                        ),
                                        hintText: 'PASSWORD',
                                      ),
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
                                    CustomButton2(
                                      text: 'SIGN IN',
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pushNamed('/farms_list_screen');
                                      },
                                    ),
                                    SizedBox(
                                      height: 40.h,
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
          ),
        );
      },
    );
  }
}
