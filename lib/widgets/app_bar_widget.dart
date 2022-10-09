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
      flexibleSpace: Container(decoration: BoxDecoration(gradient: CustomColors.gradientColor1),),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: Icon(
            Icons.add_circle_outline_outlined,
            color: Colors.white,
          ),
        )
      ],
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
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(60.h);
}
