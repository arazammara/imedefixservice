import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/custom_button.dart';
import 'package:idaawee/commons/common_widgets/u_common_record_card.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

import '../../../../utils/constants/assets_manager.dart';

class UBookAppointmentWidget extends StatelessWidget {
  const UBookAppointmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 10.h),
      child: Container(
        height: 330.h,
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Column(
          children: [
            Stack(
              children: [
                UCommonRecordCard(
                  patinumOnTap: () {
                    Navigator.pushNamed(
                        context, AppRoutes.userPlatinumProviderScreen);
                  },
                  image: 'assets/images/img.png',
                  name: 'Dr. Maria Elena',
                  speciality: 'Psychologist',
                  qualification: 'M.B.B.S., F.C.P.S (Psychology)',
                  status: AppAssets.silver,
                  onTap: () {},
                ),
                Positioned(
                  right: 0,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_border,
                      color: MyColors.appColor,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      'Under 15 Min',
                      style: getSemiBoldStyle(
                          color: MyColors.appColor, fontSize: MyFonts.size16),
                    ),
                    Text(
                      'WAIT TIME',
                      style: getSemiBoldStyle(
                          color: MyColors.grey, fontSize: MyFonts.size12),
                    ),
                  ],
                ),
                Container(
                  height: 43.h,
                  width: 2.w,
                  color: MyColors.lightgrey,
                ),
                Column(
                  children: [
                    Text(
                      '7 Years',
                      style: getSemiBoldStyle(
                          color: MyColors.appColor, fontSize: MyFonts.size16),
                    ),
                    Text(
                      'EXPERIENCE',
                      style: getSemiBoldStyle(
                          color: MyColors.grey, fontSize: MyFonts.size12),
                    ),
                  ],
                ),
                Container(
                  height: 43.h,
                  width: 2.w,
                  color: MyColors.lightgrey,
                ),
                Column(
                  children: [
                    Text(
                      '98% (452)',
                      style: getSemiBoldStyle(
                          color: MyColors.appColor, fontSize: MyFonts.size16),
                    ),
                    Text(
                      'SATISFIED',
                      style: getSemiBoldStyle(
                          color: MyColors.grey, fontSize: MyFonts.size12),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              child: const Divider(
                color: MyColors.lightgrey,
                thickness: 1.5,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                      text: TextSpan(
                          text: 'Available:',
                          style: getSemiBoldStyle(
                              color: MyColors.appColor,
                              fontSize: MyFonts.size14),
                          children: [
                        TextSpan(
                            text: ' Mon, 31 August',
                            style: getSemiBoldStyle(
                                color: MyColors.black,
                                fontSize: MyFonts.size14))
                      ])),
                  RichText(
                      text: TextSpan(
                          text: 'Free:',
                          style: getSemiBoldStyle(
                              color: MyColors.appColor,
                              fontSize: MyFonts.size14),
                          children: [
                        TextSpan(
                            text: ' \$ 28.00',
                            style: getSemiBoldStyle(
                                color: MyColors.black,
                                fontSize: MyFonts.size14))
                      ])),
                ],
              ),
            ),
            padding10,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: CustomButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppRoutes.userPlatinumProviderScreen);
                },
                buttonText: 'Book Appointment',
                buttonHeight: 55.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
