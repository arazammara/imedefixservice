import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/doctor/create_offer/widgets/d_select_type_offer_card.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class DSelectTypeOfferSection extends StatefulWidget {
  const DSelectTypeOfferSection({super.key});

  @override
  State<DSelectTypeOfferSection> createState() =>
      _DSelectTypeOfferSectionState();
}

class _DSelectTypeOfferSectionState extends State<DSelectTypeOfferSection> {
  int selectIndex = 5;
  List<String> images = [
    AppAssets.dconsulation,
    AppAssets.dappointment,
    AppAssets.dlab,
    AppAssets.dpharmacy,
  ];
  List<String> title = [consultation, appointment, labtest, pharmacy];
  List<String> subTitle = [
    iwanttoProvideConsultation,
    iwanttotakeappointments,
    ihavelabIwillprovidelabtestservices,
    iwanttosellpharmacyproducts
  ];

  @override
  Widget build(BuildContext context) {
    List<VoidCallback> ontap = [
      () {
        Navigator.pushNamed(context, AppRoutes.doctorConsulationOfferScreen);
      },
      () {
        Navigator.pushNamed(context, AppRoutes.doctorAppointmentOfferScreen);
      },
      () {
        Navigator.pushNamed(context, AppRoutes.doctorLabTestOfferScreen);
      },
      () {
        Navigator.pushNamed(context, AppRoutes.doctorPharmacyOfferScreen);
      },
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 15.h),
          child: Text(
            selectOfferType,
            style: getMediumStyle(
                color: MyColors.pharmacytextColor, fontSize: MyFonts.size18),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 29.w, vertical: 5.h),
          child: SizedBox(
            height: 455.h,
            child: GridView.builder(
                itemCount: 4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 212.h,
                    crossAxisSpacing: 23.h,
                    mainAxisSpacing: 26),
                itemBuilder: (context, index) {
                  return DSelectTypeOfferCard(
                    image: images[index],
                    index: index,
                    onTap: () {
                      setState(() {
                        selectIndex = index;
                      });
                      ontap[index]();
                    },
                    selectIndex: selectIndex,
                    subTitle: subTitle[index],
                    title: title[index],
                  );
                }),
          ),
        )
      ],
    );
  }
}
