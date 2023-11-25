import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_rectangular_cached_network_image.dart';
import 'package:idaawee/utils/constants/app_constants.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class USeeAllBlockSection extends StatelessWidget {
  const USeeAllBlockSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(healthCommunique,
                style: getSemiBoldStyle(
                    color: MyColors.textColor, fontSize: MyFonts.size14)),
          ),
          padding4,
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(titletattleforyourwellbeing,
                style: getMediumStyle(
                    color: MyColors.grey, fontSize: MyFonts.size12)),
          ),
          padding10,
          Container(
            height: 212.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: const Color(0xffECF0F0)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CachedRectangularNetworkImageWidget(
                  image: cronaImage,
                  height: 170,
                  width: 375,
                ),
                padding10,
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text(
                    symptomsandTreatmentofcovid19,
                    style: getMediumStyle(
                        color: MyColors.black, fontSize: MyFonts.size15),
                  ),
                ),
              ],
            ),
          ),
          padding10,
          // Center(
          //   child: OutlineCustomButton(
          //     buttonHeight: 40.h,
          //     buttonWidth: 250.w,
          //     onPressed: () {
          //       // Navigator.pushNamed(context, AppRoutes.userAppointment);
          //     },
          //     buttonText: seeallBlogs,
          //     textColor: MyColors.appColor,
          //     backColor: MyColors.appColor,
          //     borderRadius: 12.r,
          //   ),
          // )
        ],
      ),
    );
  }
}
