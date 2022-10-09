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
    return Scaffold(
      appBar: const AppBarWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: GoogleFontText2(
              data: 'Select Farm',
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
                    child: GestureDetector(
                      onTap: (){
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
                              height: 100.h,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const NormalFontText2(
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
                                    linearGradient: CustomColors.linearGradient1,
                                    animation: true,
                                    barRadius: const Radius.circular(10),
                                    animationDuration: 2000,
                                    width: MediaQuery.of(context).size.width - 72,
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
    );
  }
}
