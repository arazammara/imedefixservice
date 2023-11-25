import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/outline_custom_button.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/app_constants.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

import '../../appointment/widget/u_doctor_appointment_card.dart';

class UForAppointmentDoctorSection extends StatefulWidget {
  const UForAppointmentDoctorSection({super.key});

  @override
  State<UForAppointmentDoctorSection> createState() =>
      _UForAppointmentDoctorSectionState();
}

class _UForAppointmentDoctorSectionState
    extends State<UForAppointmentDoctorSection> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(forappointments,
              style: getSemiBoldStyle(
                  color: MyColors.textColor, fontSize: MyFonts.size14)),
          SizedBox(
            height: 5.h,
          ),
          Text(meetdoctorinrealclinic,
              style: getMediumStyle(
                  color: MyColors.grey, fontSize: MyFonts.size10)),
          padding8,
          UDoctorAppointmentCard(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.userAppointment);
            },
            name: "Dr. Sasha",
            description:
                "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.",
            image: doctor2Image,
            rating: 5,
          ),
          padding10,
          Center(
            child: OutlineCustomButton(
              buttonHeight: 40.h,
              buttonWidth: 250.w,
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.doctorListScreen);
              },
              buttonText: seealldoctorsforappointment,
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
