import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/outline_custom_button.dart';
import 'package:idaawee/features/user/home/widget/u_consult_doctor_over_video_card.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/app_constants.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UBookClinicAppointmentSection extends StatelessWidget {
  const UBookClinicAppointmentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(bookClinicAppointment,
              style: getMediumStyle(
                  color: MyColors.black, fontSize: MyFonts.size15)),
          Text(meetdoctorinrealclinic,
              style: getMediumStyle(
                  color: MyColors.black, fontSize: MyFonts.size10)),
          padding10,
          SizedBox(
              height: 212.h,
              child: ListView.builder(
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return UConsultDoctorOverVideoCard(
                      consultDoctorAvailableTime: 'Available in 2 min',
                      consultDoctorImage: doctor4Image,
                      consultDoctorSubtitle:
                          'Look charming again . follow or dermatologist',
                      consultDoctorTitle: 'Cardiologist',
                      price: 110,
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.userAppointment);
                      },
                    );
                  })),
          padding10,
          Center(
            child: OutlineCustomButton(
              buttonHeight: 40.h,
              buttonWidth: 250.w,
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.doctorListScreen);
              },
              buttonText: "View All Doctors",
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
