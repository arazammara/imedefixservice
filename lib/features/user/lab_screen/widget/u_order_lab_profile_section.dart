import 'package:flutter/material.dart';
import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UOrderLabProfileSection extends StatelessWidget {
  final String image;
  final String name;
  final String subName;
  final String consultant;
  final String professional;
  const UOrderLabProfileSection(
      {super.key,
      required this.image,
      required this.name,
      required this.subName,
      required this.consultant,
      required this.professional});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84.h,
      width: 1.sw,
      decoration: BoxDecoration(
        color: MyColors.containerColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 12),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(100.r),
                child: Image.asset(image, height: 64.h, width: 64.h)),
            SizedBox(width: 12.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: getMediumStyle(
                        color: MyColors.black, fontSize: MyFonts.size12)),
                padding5,
                Row(
                  children: [
                    Text(consultant,
                        style: getSemiBoldStyle(
                            color: MyColors.loginScreenTextColor,
                            fontSize: MyFonts.size12)),
                    SizedBox(width: 5.w),
                    Container(
                      height: 14.h,
                      width: 1.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color:
                              MyColors.loginScreenTextColor.withOpacity(0.5)),
                    ),
                    SizedBox(width: 5.w),
                    Text(professional,
                        style: getSemiBoldStyle(
                            color: MyColors.loginScreenTextColor,
                            fontSize: MyFonts.size12)),
                  ],
                ),
                padding10,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
