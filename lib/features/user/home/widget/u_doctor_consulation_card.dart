import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UDoctorNextAppointmentCard extends StatelessWidget {
  final String image;
  final String name;
  final String date;
  final String specialist;
  final VoidCallback onTap;
  final String time;

  const UDoctorNextAppointmentCard(
      {super.key,
      required this.image,
      required this.name,
      required this.specialist,
      required this.date,
      required this.onTap,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          SizedBox(
            height: 216.h,
            width: 335.w,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  child: Container(
                    height: 188.h,
                    width: 335.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      image: const DecorationImage(
                          image: AssetImage(AppAssets.bgGradient),
                          fit: BoxFit.cover),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomCenter,
                          colors: [
                            MyColors.appColor1,
                            MyColors.appColor,
                          ]),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            constraints: BoxConstraints(
                                maxWidth: 200.w, maxHeight: 48.h),
                            child: Text(name,
                                style: getBoldStyle(
                                    color: MyColors.white,
                                    fontSize: MyFonts.size14)),
                          ),
                          Container(
                            constraints: BoxConstraints(
                                maxWidth: 162.w, maxHeight: 48.h),
                            child: Text(specialist,
                                style: getSemiBoldStyle(
                                    color: MyColors.white,
                                    fontSize: MyFonts.size12)),
                          ),
                          padding20,
                          Container(
                            height: 71.h,
                            width: 157.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color: MyColors.white.withOpacity(0.3),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      AppAssets.cal,
                                      height: 13.h,
                                      width: 13.h,
                                    ),
                                    SizedBox(width: 5.w),
                                    Text(
                                      date,
                                      style: getSemiBoldStyle(
                                          color: MyColors.white,
                                          fontSize: MyFonts.size14),
                                    )
                                  ],
                                ),
                                padding4,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      AppAssets.clock,
                                      height: 13.h,
                                      width: 13.h,
                                    ),
                                    SizedBox(width: 5.w),
                                    Text(
                                      time,
                                      style: getSemiBoldStyle(
                                          color: MyColors.white,
                                          fontSize: MyFonts.size14),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    right: 0,
                    bottom: 0,
                    child: Image.asset(
                      image,
                      height: 216.h,
                      width: 145.w,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
