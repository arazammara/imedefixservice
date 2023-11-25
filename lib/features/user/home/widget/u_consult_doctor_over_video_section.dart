import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/outline_custom_button.dart';
import 'package:idaawee/features/user/home/widget/u_consult_doctor_over_video_card.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/app_constants.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UConsultDoctorOverVideoSection extends StatelessWidget {
  const UConsultDoctorOverVideoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(consultdoctoroverVideo,
              style: getSemiBoldStyle(
                  color: MyColors.textColor, fontSize: MyFonts.size14)),
          padding4,
          Text(bookSurgeryinjust1min,
              style: getMediumStyle(
                  color: MyColors.grey, fontSize: MyFonts.size12)),
          padding10,
          SizedBox(
              height: 212.h,
              child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return UConsultDoctorOverVideoCard(
                      consultDoctorAvailableTime: 'Available in 2 min',
                      consultDoctorImage: doctor1Image,
                      consultDoctorSubtitle:
                          'Look charming again . follow or dermatologist',
                      consultDoctorTitle: 'Cardiologist',
                      price: 210,
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRoutes.userQuickConsultationScreen);
                      },
                    );
                  })),
          padding10,
          Center(
            child: OutlineCustomButton(
              buttonHeight: 40.h,
              buttonWidth: 250.w,
              onPressed: () {
                Navigator.pushNamed(
                    context, AppRoutes.userSpeciallizedConsultationScreen);
              },
              buttonText: viewallSpecialists,
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
