import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/outline_custom_button.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

import '../../../../utils/constants/app_constants.dart';
import '../../consulation/widget/u_doctor_consultation_card.dart';

class UConsultationWithDoctorSection extends StatefulWidget {
  const UConsultationWithDoctorSection({super.key});

  @override
  State<UConsultationWithDoctorSection> createState() =>
      _UConsultationWithDoctorSectionState();
}

class _UConsultationWithDoctorSectionState
    extends State<UConsultationWithDoctorSection> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(consultationwithdoctor,
              style: getSemiBoldStyle(
                  color: MyColors.textColor, fontSize: MyFonts.size14)),
          const SizedBox(
            height: 10,
          ),
          UDoctorConsultationCard(
            onTap: () {
              Navigator.pushNamed(
                  context, AppRoutes.userQuickConsultationScreen);
            },
            name: "Dr. Pawan",
            description:
                "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.",
            image: doctorImage,
            rating: 5,
            bannertitle: 'Expert',
          ),
          padding10,
          Center(
            child: OutlineCustomButton(
              buttonHeight: 40.h,
              buttonWidth: 250.w,
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.doctorListScreen);
              },
              buttonText: seeAllDoctor,
              textColor: MyColors.appColor,
              backColor: MyColors.appColor,
              borderRadius: 12.r,
            ),
          ),
        ],
      ),
    );
  }
}
