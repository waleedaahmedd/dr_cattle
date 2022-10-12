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
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/images/backgroung.jpg'),
            fit: BoxFit.cover,
          )),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Padding(
              padding: const EdgeInsets.all(30),
              child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 140.h,
                        ),
                        const GoogleFontText1(
                          data: 'Sign In',
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const GoogleFontText2(
                          data: 'Enter phone number and password to sign in',
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        IntlPhoneField(
                          style: TextStyle(fontFamily: 'Rubik',
                              fontSize: 12.sp,
                              color: CustomColors.color2,),
                          flagsButtonPadding: const EdgeInsets.only(left: 15, bottom: 2),
                          showCountryFlag: false,
                          //showDropdownIcon: false,
                          disableLengthCheck: true,
                          dropdownTextStyle:
                           TextStyle(
                              fontFamily: 'Rubik',
                              fontSize: 12.sp,
                              color: CustomColors.color2),

                          dropdownIcon: const Icon(
                            Icons.arrow_drop_down_outlined,
                            color: CustomColors.color2,
                          ),
                          //controller: authViewModel.emailController,
                          decoration:  InputDecoration(
                            // border: OutlineInputBorder(),
                            suffixIcon: Icon(
                              Icons.phone_outlined,
                              size: 15.h,
                            ),
                            hintText: 'Enter Phone Number',
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
                            prefixIcon: Icon(Icons.lock,size: 15.h,),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon:  Icon(
                                Icons.remove_red_eye,
                                size: 15.h,
                              ),
                            ),
                            hintText: 'Enter Password',
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
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
                              child: const GoogleFontText2(
                                data: 'Forgot Password?',
                              ),
                            )),
                        SizedBox(
                          height: 15.h,
                        ),
                        CustomButton2(
                          text: 'SIGN IN',
                          onPressed: () {
                            Navigator.of(context).pushNamed('/farms_list_screen');
                          },
                        ),
                        const Spacer(),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: () {
                            Navigator.of(context).pushNamed('/sign_up');
                          },
                          child: Row(
                            children: const [
                              Spacer(),
                              GoogleFontText2(
                                data: 'Don’t have an account?  ',
                              ),
                              GoogleFontText3(
                                data: 'Sign up',
                              ),
                              Spacer()
                            ],
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
