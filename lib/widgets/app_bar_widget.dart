import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../utils/shared_pref .dart';
import '../utils/custom_colors.dart';
import '../utils/custom_font_style.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 60.h,
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions:  [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Container(
               // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(
                    Icons.notifications_none,
                    color: CustomColors.color2,
                    size: 18.h,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10.w,),
            ClipRRect(
              borderRadius: BorderRadius.circular(40.0),
              child: Container(
                // decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Icon(
                    Icons.add,
                    color: CustomColors.color2,
                    size: 18.h,
                  ),
                ),
              ),
            ),
            SizedBox(width: 20.w,)
          ],
        )
      ],
      title: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 24.r,
            child: ClipOval(
              child: Image.asset(
                fit: BoxFit.cover,
                'assets/images/profile.jpg',
                width: 38.h,
                height: 38.h,
              ),
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
           const GoogleFontText4(data: 'Dr Cattle',),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60.h);
}
