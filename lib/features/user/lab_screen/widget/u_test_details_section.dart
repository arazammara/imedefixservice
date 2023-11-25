import 'package:flutter/material.dart';
import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UTestDetailsSection extends StatelessWidget {
  final String price;
  final bool isFavorite;
  final String title;
  final String subtitle;
  final String types;
  final String ipsms;
  final String dlrcotas;
  final String recudes;
  final String breathes;
  final String facings;
  final String testAbouts;
  final Function() favorite;

  const UTestDetailsSection(
      {super.key,
      required this.price,
      required this.isFavorite,
      required this.title,
      required this.subtitle,
      required this.types,
      required this.ipsms,
      required this.dlrcotas,
      required this.recudes,
      required this.breathes,
      required this.facings,
      required this.testAbouts,
      required this.favorite});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('\$ $price USD',
                  style: getBoldStyle(
                      color: MyColors.black, fontSize: MyFonts.size18)),
              InkWell(
                onTap: favorite,
                child: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_outline,
                  size: 24.h,
                  color: isFavorite
                      ? MyColors.appColor
                      : MyColors.loginScreenTextColor,
                ),
              )
            ],
          ),
          padding6,
          Text(title,
              style: getSemiBoldStyle(
                  color: MyColors.black, fontSize: MyFonts.size16)),
          padding10,
          Text(subtitle,
              style: getMediumStyle(
                  color: MyColors.loginScreenTextColor,
                  fontSize: MyFonts.size16)),
          padding20,
          Container(
            height: 264.h,
            width: 1.sw,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: MyColors.containerColor),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(testdetails,
                      style: getBoldStyle(
                          color: MyColors.black, fontSize: MyFonts.size16)),
                  SizedBox(height: 30.h),
                  SizedBox(
                    width: 140.w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(ipsm,
                                style: getMediumStyle(
                                    color: MyColors.loginScreenTextColor,
                                    fontSize: MyFonts.size14)),
                            SizedBox(height: 23.h),
                            Text(dlrcota,
                                style: getMediumStyle(
                                    color: MyColors.loginScreenTextColor,
                                    fontSize: MyFonts.size14)),
                            SizedBox(height: 23.h),
                            Text(recude,
                                style: getMediumStyle(
                                    color: MyColors.loginScreenTextColor,
                                    fontSize: MyFonts.size14)),
                            SizedBox(height: 23.h),
                            Text(breathe,
                                style: getMediumStyle(
                                    color: MyColors.loginScreenTextColor,
                                    fontSize: MyFonts.size14)),
                            SizedBox(height: 23.h),
                            Text(facing,
                                style: getMediumStyle(
                                    color: MyColors.loginScreenTextColor,
                                    fontSize: MyFonts.size14)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(ipsms,
                                style: getSemiBoldStyle(
                                    color: MyColors.black,
                                    fontSize: MyFonts.size14)),
                            SizedBox(height: 23.h),
                            Text(dlrcotas,
                                style: getSemiBoldStyle(
                                    color: MyColors.black,
                                    fontSize: MyFonts.size14)),
                            SizedBox(height: 23.h),
                            Text(recudes,
                                style: getSemiBoldStyle(
                                    color: MyColors.black,
                                    fontSize: MyFonts.size14)),
                            SizedBox(height: 23.h),
                            Text(breathes,
                                style: getSemiBoldStyle(
                                    color: MyColors.black,
                                    fontSize: MyFonts.size14)),
                            SizedBox(height: 23.h),
                            Text(facings,
                                style: getSemiBoldStyle(
                                    color: MyColors.black,
                                    fontSize: MyFonts.size14)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          padding20,
          Container(
            height: 200.h,
            width: 1.sw,
            decoration: BoxDecoration(
              color: MyColors.containerColor,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(aboutTest,
                        style: getBoldStyle(
                            color: MyColors.black, fontSize: MyFonts.size16)),
                    SizedBox(height: 20.h),
                    Text(testAbouts,
                        style: getMediumStyle(
                            color: MyColors.loginScreenTextColor,
                            fontSize: MyFonts.size13)),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}
