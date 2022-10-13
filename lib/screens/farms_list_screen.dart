import 'package:dr_cattle/utils/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../utils/custom_font_style.dart';
import '../widgets/app_bar_widget.dart';

class FarmsListScreen extends StatelessWidget {
  const FarmsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(gradient: CustomColors.gradientColor1),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: const AppBarWidget(),
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  const GoogleFontText5(
                    data: 'Alerts',
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Icon(
                    Icons.error_outlined,
                    color: Colors.red,
                    size: 13.h,
                  )
                ],
              ),
            ),
            Container(
              height: 120.h,
              child: ListView.builder(
                  shrinkWrap: true,
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed('/cattle_list_screen');
                        },
                        child: Card(
                          color: Colors.white,
                          elevation: 5,
                          // semanticContainer: true,
                          //clipBehavior: Clip.antiAliasWithSaveLayer,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    'assets/images/farm.jpg',
                                    width: 120.w,
                                    height: 120.h,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    /*  Image.asset(
                                      'assets/images/farm.jpg',
                                      width: double.infinity,
                                      height: 100.w,
                                      fit: BoxFit.cover,
                                    ),*/
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const GoogleFontText5(
                                            data: 'Arif Cattle Farm',
                                          ),
                                          SizedBox(
                                            height: 2.h,
                                          ),
                                          const GoogleFontText6(data: 'Total 56 cattle',),
                                          SizedBox(width: 5.w),
                                          Row(
                                            children: [
                                              SizedBox(
                                                height: 20.h,
                                                child: CircleAvatar(
                                                  backgroundColor: Colors.transparent,
                                                  radius: 24.r,
                                                  child: ClipOval(
                                                    child: Image.asset(
                                                      fit: BoxFit.cover,
                                                      'assets/images/profile.jpg',
                                                      width: 20.h,
                                                      height: 20.h,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const GoogleFontText6(data: 'Total 56 cattle',),
                                            ],
                                          ),

                                          LinearPercentIndicator(
                                            /*leading: const Icon(
                                              Icons.health_and_safety,
                                              color: CustomColors.color1,
                                            ),*/
                                            linearGradient:
                                                CustomColors.linearGradient1,
                                            animation: true,
                                            barRadius:
                                                const Radius.circular(10),
                                            animationDuration: 2000,
                                            width: 160.w,
                                            lineHeight: 10.0.h,
                                            center: const Text(
                                              "Healthy Cattle 50.0%",
                                              style: TextStyle(
                                                  fontSize: 12.0,
                                                  color: Colors.white),
                                            ),
                                            percent: 0.5,
                                            // backgroundColor: Colors.grey.shade400,
                                            // progressColor: CustomColors.color1,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: GoogleFontText5(
                data: 'Healthy Farms',
              ),
            ),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed('/cattle_list_screen');
                        },
                        child: Card(
                          color: Colors.white,
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
                                height: 100.w,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const GoogleFontText5(
                                      data: 'Farm Name',
                                    ),
                                    SizedBox(
                                      height: 10.h,
                                    ),
                                    LinearPercentIndicator(
                                      leading: const Icon(
                                        Icons.health_and_safety,
                                        color: CustomColors.color1,
                                      ),
                                      linearGradient:
                                          CustomColors.linearGradient1,
                                      animation: true,
                                      barRadius: const Radius.circular(10),
                                      animationDuration: 2000,
                                      width: 294.w,
                                      lineHeight: 10.0.h,
                                      center: const Text(
                                        "Healthy Cattle 50.0%",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.white),
                                      ),
                                      percent: 0.5,
                                      // backgroundColor: Colors.grey.shade400,
                                      // progressColor: CustomColors.color1,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
