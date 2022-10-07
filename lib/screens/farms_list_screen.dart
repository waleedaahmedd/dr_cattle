import 'package:dr_cattle/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../utils/custom_font_style.dart';

class FarmsListScreen extends StatelessWidget {
  const FarmsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 60.h,
        title: Row(
          children: [
            CircleAvatar(
              radius: 24.r,
              child: ClipOval(
                child: Image.asset(
                  fit: BoxFit.cover,
                  'assets/images/profile.jpg',
                  width: 50.w,
                  height: 50.h,
                ),
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            const Text("Welcome User Name"),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: GoogleFontText1(
              data: 'Select Farm Name',
            ),
          ),
          Expanded(
            child: ListView.builder(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Card(
                      color: CustomColors.color2,
                      elevation: 5,
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/farm.jpg',
                            width: double.infinity,
                            height: 100.h,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const GoogleFontText3(
                                  data: 'Farm Name',
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                LinearPercentIndicator(
                                  width: MediaQuery.of(context).size.width - 70,
                                  lineHeight: 10.0.h,
                                  percent: 0.5,
                                  backgroundColor: Colors.grey.shade400,
                                  progressColor: CustomColors.color1,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
