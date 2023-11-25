import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/user/home/widget/u_specialized_doctor_card.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';

class SpecializedDoctorsWidget extends StatefulWidget {
  const SpecializedDoctorsWidget({
    super.key,
  });

  @override
  State<SpecializedDoctorsWidget> createState() =>
      _SpecializedDoctorsWidgetState();
}

class _SpecializedDoctorsWidgetState extends State<SpecializedDoctorsWidget> {
  List<String> spacializationImage = [
    AppAssets.gynecologist,
    AppAssets.gastroenterologist,
    AppAssets.dermatologist,
    AppAssets.nephrologist,
    AppAssets.cardiologist,
    AppAssets.psychiatrist,
    AppAssets.eNtSpecialist,
    AppAssets.physiotherapist,
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
    return SizedBox(
      height: 600.h,
      child: GridView.builder(
          padding: EdgeInsets.zero,
          itemCount: spacializationTitle.length,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisSpacing: 5.h,
              crossAxisSpacing: 5.h,
              mainAxisExtent: 120.h,
              crossAxisCount: 3),
          itemBuilder: (context, index) => USpecializedDoctorCard(
            onTap: (){
              Navigator.pushNamed(
                  context,
                  AppRoutes.userSpeciallizedDoctorsScreen,
                  arguments: {
                    "categoryName" : spacializationTitle[index],
                    "categoryImage" : spacializationImage[index],
                  }
              );
            },
            image: spacializationImage[index],
            title: spacializationTitle[index],
          )),
    );
  }
}
