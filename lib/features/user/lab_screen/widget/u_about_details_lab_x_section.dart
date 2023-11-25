import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UAboutDetailLabXSection extends StatelessWidget {
  final String image;
  final String name;
  final String subName;
  final String consultant;
  final String professional;
  final String dealingIns;
  final String areaofOperations;
  final String address;
  final String website;
  final Function() websiteOnTap;
  const UAboutDetailLabXSection(
      {super.key,
      required this.image,
      required this.name,
      required this.subName,
      required this.consultant,
      required this.professional,
      required this.dealingIns,
      required this.areaofOperations,
      required this.address,
      required this.websiteOnTap,
      required this.website});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 5),
      child: Container(
        // height: 469.h,
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
              Text(aboutdetails,
                  style: getBoldStyle(
                      color: MyColors.black, fontSize: MyFonts.size16)),
              SizedBox(height: 15.h),
              Container(
                height: 84.h,
                width: 1.sw,
                decoration: BoxDecoration(
                  color: MyColors.white,
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
                                  color: MyColors.black,
                                  fontSize: MyFonts.size12)),
                          padding5,
                          Text(subName,
                              style: getSemiBoldStyle(
                                  color: MyColors.loginScreenTextColor,
                                  fontSize: MyFonts.size12)),
                          padding5,
                          Row(
                            children: [
                              Text(consultant,
                                  style: getBoldStyle(
                                      color: MyColors.loginScreenTextColor,
                                      fontSize: MyFonts.size12)),
                              SizedBox(width: 5.w),
                              Container(
                                height: 14.h,
                                width: 2.w,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: MyColors.loginScreenTextColor),
                              ),
                              SizedBox(width: 5.w),
                              Text(professional,
                                  style: getBoldStyle(
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
              ),
              padding30,
              Text(dealingin,
                  style: getSemiBoldStyle(
                      color: MyColors.black, fontSize: MyFonts.size14)),
              padding15,
              Text(dealingIns,
                  style: getMediumStyle(
                      color: MyColors.loginScreenTextColor,
                      fontSize: MyFonts.size12)),
              padding20,
              Text(areasofoperation,
                  style: getSemiBoldStyle(
                      color: MyColors.black, fontSize: MyFonts.size14)),
              padding15,
              Text(areaofOperations,
                  style: getMediumStyle(
                      color: MyColors.loginScreenTextColor,
                      fontSize: MyFonts.size12)),
              padding20,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AppAssets.map,
                    height: 18.h,
                    width: 18.h,
                    color: MyColors.appColor,
                  ),
                  SizedBox(width: 10.w),
                  SizedBox(
                    width: 230.w,
                    child: Text(address,
                        style: getMediumStyle(
                            color: MyColors.black, fontSize: MyFonts.size12)),
                  ),
                ],
              ),
              padding20,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    AppAssets.global,
                    height: 18.h,
                    width: 18.h,
                    color: MyColors.appColor,
                  ),
                  SizedBox(width: 10.w),
                  InkWell(
                    onTap: websiteOnTap,
                    child: SizedBox(
                      width: 230.w,
                      child: Text(website,
                          style: getMediumStyle(
                              color: MyColors.black, fontSize: MyFonts.size12)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
