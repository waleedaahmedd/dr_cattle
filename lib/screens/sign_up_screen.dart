import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:provider/provider.dart';

import '../utils/custom_buttons.dart';
import '../utils/custom_colors.dart';
import '../utils/custom_font_style.dart';
import '../view_models/auth_view_model.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
            body: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 140.h,
                        ),
                        const GoogleFontText1(
                          data: 'Sign Up',
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const GoogleFontText2(
                          data: 'Enter your details to sign up',
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            // border: const OutlineInputBorder(),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon:  Icon(
                                Icons.person,
                                size: 15.h,
                              ),
                            ),
                            hintText: 'Enter First Name',
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            // border: const OutlineInputBorder(),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon:  Icon(
                                Icons.person,
                                size: 15.h,
                              ),
                            ),
                            hintText: 'Enter Last Name',
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
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
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon:  Icon(
                                Icons.remove_red_eye,
                                size: 15.h,
                              ),
                            ),
                            hintText: 'Your Password',
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        TextField(
                          decoration: InputDecoration(
                            // border: const OutlineInputBorder(),
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon:  Icon(
                                Icons.lock_outline,
                                size: 15.h,
                              ),
                            ),
                            hintText: 'Confirm Password',
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        CustomButton2(
                          text: 'SIGN UP',
                          onPressed: () {},
                        ),
                        const Spacer(),
                        TextButton(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child:  Row(
                            children: const [
                              Spacer(),
                              GoogleFontText2(
                                data: 'Already have an account?  ',
                              ),
                              GoogleFontText3(
                                data: 'Sign in',
                              ),
                              Spacer()
                            ],
                          )
                        ),
                      ],
                    ),
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
