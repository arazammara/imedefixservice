import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/commons/common_widgets/custom_button.dart';
import 'package:idaawee/features/user/consulation/widget/u_consulation_bottom_section.dart';
import 'package:idaawee/features/user/consulation/widget/u_consulation_detail_section.dart';
import 'package:idaawee/features/user/consulation/widget/u_prefer_langauage_section.dart';
import 'package:idaawee/features/user/consulation/widget/u_select_consulation.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

import '../../../../utils/constants/assets_manager.dart';

class UserConsulationScreen extends StatelessWidget {
  final bool isPayments;
  const UserConsulationScreen({super.key, required this.isPayments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        appBarTitle: consultation,
      ),
      body: SizedBox(
        height: 812.h,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(consultationforMigraine,
                            style: getSemiBoldStyle(
                                color: MyColors.black,
                                fontSize: MyFonts.size16)),
                        padding10,
                        Text(' $price:$symble 100',
                            style: getMediumStyle(
                                color: MyColors.black,
                                fontSize: MyFonts.size14)),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100.r),
                      child: Image.asset(
                        AppAssets.migraine,
                        height: 74.h,
                        width: 74.h,
                      ),
                    ),
                  ],
                ),
              ),
              padding16,
              const UPreferLanguageSection(),
              padding16,
              const USelectConsulation(),
              padding16,
              const UConsulationDetailSection(),
              padding16,
              const UConsulationBottomSection(),
              padding24,
              isPayments == isPayments
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: CustomButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, AppRoutes.medicalRecordScreen);
                        },
                        buttonText: paynow,
                        backColor: MyColors.appColor,
                        borderRadius: 6.r,
                        fontSize: MyFonts.size18,
                      ),
                    )
                  : Container(),
              padding16,
            ],
          ),
        ),
      ),
    );
  }
}
