import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/outline_custom_button.dart';
import 'package:idaawee/features/user/home/widget/u_premium_clinic_consultant_card.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/app_constants.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UPremiumClientConsultantSection extends StatefulWidget {
  const UPremiumClientConsultantSection({
    super.key,
  });

  @override
  State<UPremiumClientConsultantSection> createState() =>
      _UPremiumClientConsultantSectionState();
}

class _UPremiumClientConsultantSectionState
    extends State<UPremiumClientConsultantSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(premiumClinicConsultant,
                style: getSemiBoldStyle(
                    color: MyColors.textColor, fontSize: MyFonts.size14)),
          ),
          padding4,
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(premiumClinicdoctorsinhighestdemand,
                style: getMediumStyle(
                    color: MyColors.grey, fontSize: MyFonts.size12)),
          ),
          padding10,
          SizedBox(
            height: 410.h,
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: 2,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return UPremiumClinicConsultantCard(
                    isFavorite: false,
                    image: doctorClinicImage,
                    name: 'Dr.Pawan',
                    description:
                        'Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.',
                    rating: 4.5,
                    book: () {
                      Navigator.pushNamed(context, AppRoutes.userAppointment);
                    },
                    favorite: () {
                      setState(() {});
                    },
                    availableTime: 'Today',
                    hospitalAddress: 'Street 1, Patna, Bihar, India',
                    hospitalName: 'The great hospital',
                    price: 100,
                  );
                }),
          ),
          padding20,
          Center(
            child: OutlineCustomButton(
              buttonHeight: 40.h,
              buttonWidth: 250.w,
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.doctorListScreen);
              },
              buttonText: viewallPremiumDoctor,
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
