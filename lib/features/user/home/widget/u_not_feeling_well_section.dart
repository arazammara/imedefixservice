import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/outline_custom_button.dart';
import 'package:idaawee/features/user/home/widget/u_not_feeling_well_card.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

// ignore: must_be_immutable
class UNotFeelingWellSection extends StatelessWidget {
  const UNotFeelingWellSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(notFeelingwell,
                style: getSemiBoldStyle(
                    color: MyColors.textColor, fontSize: MyFonts.size14)),
          ),
          padding3,
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(choosebetweenvideoandAppointmnent,
                style: getMediumStyle(
                    color: MyColors.grey, fontSize: MyFonts.size12)),
          ),
          padding10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UNotFeelingWellCard(
                image: AppAssets.bodymeter,
                title: bodytemperature,
                onTap: () {},
              ),
              UNotFeelingWellCard(
                image: AppAssets.vomiting,
                onTap: () {},
                title: vomiting,
              ),
              UNotFeelingWellCard(
                image: AppAssets.body,
                title: bodytemperature,
                onTap: () {},
              ),
            ],
          ),
          padding16,
          Center(
            child: OutlineCustomButton(
              buttonHeight: 40.h,
              buttonWidth: 250.w,
              onPressed: () {
                // Navigator.pushNamed(context, AppRoutes.userAppointment);
              },
              buttonText: viewallSymptoms,
              textColor: MyColors.appColor,
              backColor: MyColors.appColor,
              borderRadius: 12.r,
            ),
          )
        ],
      ),
    );
  }
}
