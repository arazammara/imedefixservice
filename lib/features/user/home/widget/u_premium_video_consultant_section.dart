import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/outline_custom_button.dart';
import 'package:idaawee/features/user/consulation/widget/u_doctor_consultation_card.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

import '../../../../utils/constants/app_constants.dart';

class UPremiumVideoConsultantSection extends StatefulWidget {
  const UPremiumVideoConsultantSection({super.key});

  @override
  State<UPremiumVideoConsultantSection> createState() =>
      _UPremiumVideoConsultantSectionState();
}

class _UPremiumVideoConsultantSectionState
    extends State<UPremiumVideoConsultantSection> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(premiumvideoconsultant,
              style: getSemiBoldStyle(
                  color: MyColors.textColor, fontSize: MyFonts.size14)),
          Text(topvideoconsultantonlyforyou,
              style: getMediumStyle(
                  color: MyColors.grey, fontSize: MyFonts.size12)),
          padding10,
          UDoctorConsultationCard(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.userAppointment);
            },
            bannertitle: "Good",
            name: "Dr. Sasha",
            description:
                "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.",
            image: doctor2Image,
            rating: 3,
          ),
          padding10,
          UDoctorConsultationCard(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.userAppointment);
            },
            bannertitle: "Expert",
            name: "Dr. Sasha",
            description:
                "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.",
            image: doctor3Image,
            rating: 3,
          ),
          padding10,
          Center(
            child: OutlineCustomButton(
              buttonHeight: 40.h,
              buttonWidth: 250.w,
              onPressed: () {
                Navigator.pushNamed(
                    context, AppRoutes.userSpeciallizedConsultationScreen);
              },
              buttonText: viewallPremiumDoctor,
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
