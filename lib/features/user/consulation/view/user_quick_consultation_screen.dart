import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/commons/common_widgets/custom_button.dart';
import 'package:idaawee/features/user/consulation/widget/u_consulation_bottom_section.dart';
import 'package:idaawee/features/user/consulation/widget/u_consulation_detail_section.dart';
import 'package:idaawee/features/user/consulation/widget/u_consult_all_doctor_section.dart';
import 'package:idaawee/features/user/consulation/widget/u_consult_for_migration_section.dart';
import 'package:idaawee/features/user/consulation/widget/u_prefer_langauage_section.dart';
import 'package:idaawee/features/user/consulation/widget/u_select_consulation.dart';
import '../../../../routes/route_manager.dart';
import '../../../../utils/constants/font_manager.dart';

class UserQuickConsulationScreen extends StatelessWidget {
  const UserQuickConsulationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushNamed(
            context, AppRoutes.userSpeciallizedConsultationScreen);
        return true;
      },
      child: Scaffold(
        appBar: CommonAppBar(
          onPressed: () {
            Navigator.pushNamed(
                context, AppRoutes.userSpeciallizedConsultationScreen);
          },
          appBarTitle: consultation,
        ),
        body: SizedBox(
          height: 812.h,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const UConsultforMigrationSection(),
                padding16,
                const UConsultAllDoctorSection(isPayment: true),
                padding16,
                const UPreferLanguageSection(),
                padding16,
                const USelectConsulation(),
                padding16,
                const UConsulationDetailSection(),
                padding16,
                const UConsulationBottomSection(),
                padding24,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 55.w),
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
                ),
                padding16,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
