import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../utils/custom_colors.dart';
import '../utils/custom_font_style.dart';
import '../widgets/app_bar_widget.dart';

class CattleListScreen extends StatelessWidget {
  const CattleListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Row(
                    children: const [
                      Icon(
                        Icons.arrow_back,
                        color: CustomColors.color2,
                      ),
                      NormalFontText3(
                        data: 'Back to Farms',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                const GoogleFontText2(
                  data: 'Select Cattle',
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisExtent: 260,
              ),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Card(
                    color: Colors.white,
                    elevation: 10,
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/cow.jpg',
                          width: double.infinity,
                          height: 100.w,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const NormalFontText1(
                                data: 'Name',
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              LinearPercentIndicator(
                                leading: Icon(
                                  Icons.water_drop_outlined,
                                  color: CustomColors.color1,
                                  size: 15.h,
                                ),
                                animation: true,
                                barRadius: const Radius.circular(10),
                                animationDuration: 2000,
                                width: 130.w,
                                lineHeight: 10.0.h,
                                center: const Text(
                                  "Dehydration 50.0%",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.white),
                                ),
                                percent: 0.5,
                                linearGradient: CustomColors.linearGradient1,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              LinearPercentIndicator(
                                leading: Icon(
                                  Icons.favorite_border,
                                  color: CustomColors.color1,
                                  size: 15.h,
                                ),
                                animation: true,
                                barRadius: const Radius.circular(10),
                                animationDuration: 2000,
                                width: 130.w,
                                lineHeight: 10.0.h,
                                center: const Text(
                                  "Heart Rate 50.0%",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color:  Colors.white),
                                ),
                                percent: 0.5,
                                linearGradient: CustomColors.linearGradient1,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              LinearPercentIndicator(
                                leading: Icon(
                                  Icons.health_and_safety,
                                  color: CustomColors.color1,
                                  size: 15.h,
                                ),
                                animation: true,
                                barRadius: const Radius.circular(10),
                                animationDuration: 2000,
                                width: 130.w,
                                lineHeight: 10.0.h,
                                center: const Text(
                                  "Health 50.0%",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color:  Colors.white),
                                ),
                                percent: 0.5,
                                linearGradient: CustomColors.linearGradient1,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
