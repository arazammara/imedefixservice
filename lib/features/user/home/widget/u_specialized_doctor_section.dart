import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/user/home/widget/u_specialized_doctor_card.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

import '../../../../routes/route_manager.dart';

class USpecializedDoctorSection extends StatefulWidget {
  const USpecializedDoctorSection({
    super.key,
  });

  @override
  State<USpecializedDoctorSection> createState() =>
      _USpecializedDoctorSectionState();
}

class _USpecializedDoctorSectionState extends State<USpecializedDoctorSection> {
  List<String> spacializationImage = [
    AppAssets.gynecologist,
    AppAssets.gastroenterologist,
    AppAssets.dermatologist,
    AppAssets.nephrologist,
    AppAssets.cardiologist,
    AppAssets.psychiatrist,
    AppAssets.eNtSpecialist,
    AppAssets.physiotherapist,
  ];
  List<String> spacializationTitle = [
    gynecologist,
    gastroenterologist,
    dermatologist,
    nephrologist,
    cardiologist,
    psychiatrist,
    eNtSpecialist,
    physiotherapist,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(ourspecialization,
                style: getSemiBoldStyle(
                    color: MyColors.textColor, fontSize: MyFonts.size14)),
          ),
          padding4,
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(choosespecialization,
                style: getMediumStyle(
                    color: MyColors.grey, fontSize: MyFonts.size11)),
          ),
          padding16,
          SizedBox(
            height: 375.h,
            width: 1.sw,
            child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: 8,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 5.h,
                    crossAxisSpacing: 5.h,
                    mainAxisExtent: 120.h,
                    crossAxisCount: 3),
                itemBuilder: (context, index) => USpecializedDoctorCard(
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRoutes.userSpeciallizedDoctorsScreen,
                            arguments: {
                              "categoryName": spacializationTitle[index],
                              "categoryImage": spacializationImage[index],
                            });
                      },
                      image: spacializationImage[index],
                      title: spacializationTitle[index],
                    )),
          ),
        ],
      ),
    );
  }
}
