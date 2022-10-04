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
        return Scaffold(
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [

                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(bottom: 20.0),
                                child: GoogleFontText1(
                                  data: 'Sign Up',
                                ),
                              ),
                              Column(
                                children: [
                                  TextField(
                                    decoration: InputDecoration(
                                      border: const OutlineInputBorder(),
                                      suffixIcon: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.person,
                                        ),
                                      ),
                                      hintText: 'FIRST NAME',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      border: const OutlineInputBorder(),
                                      suffixIcon: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.person,
                                        ),
                                      ),
                                      hintText: 'LAST NAME',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  IntlPhoneField(
                                    //controller: authViewModel.emailController,
                                    decoration: const InputDecoration(
                                      border: OutlineInputBorder(),
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
                                      border: const OutlineInputBorder(),
                                      suffixIcon: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.remove_red_eye,
                                        ),
                                      ),
                                      hintText: 'PASSWORD',
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      border: const OutlineInputBorder(),
                                      suffixIcon: IconButton(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.lock_outline,
                                        ),
                                      ),
                                      hintText: 'CONFIRM PASSWORD',
                                    ),
                                  ),

                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomButton1(
                                    text: 'REGISTER',
                                    onPressed: () {},
                                  ),
                                  SizedBox(
                                    height: 40.h,
                                  ),
                                  const NormalFontText1(
                                    data: 'ALREADY HAVE AN ACCOUNT?',
                                  ),
                                  TextButton(
                                    style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero,
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const GoogleFontText1(
                                      data: 'Sign In >',
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
