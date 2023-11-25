import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UViewAllClinicSection extends StatelessWidget {
  const UViewAllClinicSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(nearestHospital,
                style: getSemiBoldStyle(
                    color: MyColors.textColor, fontSize: MyFonts.size14)),
          ),
          padding4,
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(Your24x7healthcare,
                style: getMediumStyle(
                    color: MyColors.grey, fontSize: MyFonts.size12)),
          ),
          padding10,
          ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: Image.asset(
                AppAssets.hospital,
                height: 189.h,
                width: 1.sw,
              )),
          padding6,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 5.0),
                child: Text('Great falls Hospital',
                    style: getSemiBoldStyle(
                        color: MyColors.textColor, fontSize: MyFonts.size14)),
              ),
              Row(
                children: [
                  Image.asset(
                    AppAssets.distance,
                    height: 20.h,
                    width: 20.h,
                    color: MyColors.loginScreenTextColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text('Below 1 KM',
                        style: getMediumStyle(
                            color: MyColors.loginScreenTextColor,
                            fontSize: MyFonts.size10)),
                  ),
                ],
              ),
            ],
          ),
          padding4,
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text('Street 1, Patna, Bihar, India',
                style: getMediumStyle(
                    color: MyColors.grey, fontSize: MyFonts.size12)),
          ),
          padding16,
          // Center(
          //   child: OutlineCustomButton(
          //     buttonHeight: 40.h,
          //     buttonWidth: 250.w,
          //     onPressed: () {
          //       // Navigator.pushNamed(context, AppRoutes.userAppointment);
          //     },
          //     buttonText: viewallClinics,
          //     textColor: MyColors.appColor,
          //     backColor: MyColors.appColor,
          //     borderRadius: 12.r,
          //   ),
          // ),
        ],
      ),
    );
  }
}
