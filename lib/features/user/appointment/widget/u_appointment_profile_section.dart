import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/user/appointment/widget/u_appointment_prodile_card.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';

import 'package:idaawee/utils/constants/font_manager.dart';

class UAppointmentProfileSection extends StatelessWidget {
  const UAppointmentProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          const UAppointmentProfileCard(
            image: AppAssets.appointment,
            name: 'Dr. John Doe',
            speciality: 'Dentist',
            price: 100,
          ),
          padding20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(patients,
                      style: getLightStyle(
                          color: MyColors.black, fontSize: MyFonts.size14)),
                  SizedBox(
                    height: 8.h,
                  ),
                  Text('1000+',
                      style: getSemiBoldStyle(
                          color: MyColors.black94, fontSize: MyFonts.size20)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(experience,
                      style: getLightStyle(
                          color: MyColors.black, fontSize: MyFonts.size14)),
                  padding8,
                  Text('5 years+',
                      style: getSemiBoldStyle(
                          color: MyColors.black94, fontSize: MyFonts.size20)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(reviews,
                      style: getLightStyle(
                          color: MyColors.black, fontSize: MyFonts.size14)),
                  padding8,
                  Text('4.5+',
                      style: getSemiBoldStyle(
                          color: MyColors.black94, fontSize: MyFonts.size20)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
