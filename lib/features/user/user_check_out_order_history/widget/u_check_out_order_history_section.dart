import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

// ignore: must_be_immutable
class UCheckOutOrderHistorySection extends StatelessWidget {
  UCheckOutOrderHistorySection({super.key});

  List<String> imageList = [
    AppAssets.appointment,
    AppAssets.consulation,
    AppAssets.labtest,
    AppAssets.pharmacy,
  ];
  List<String> title = [
    appointment,
    consultation,
    labtest,
    pharmacy,
  ];

  @override
  Widget build(BuildContext context) {
    List<Function()> onTap = [
      () {
        Navigator.pushNamed(context, AppRoutes.checkOutAppointment);
      },
      () {
        Navigator.pushNamed(context, AppRoutes.checkOutConsulation);
      },
      () {
        Navigator.pushNamed(context, AppRoutes.checkOutLabTest);
      },
      () {
        Navigator.pushNamed(context, AppRoutes.checkOutPharmacy);
      },
    ];
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: GridView.builder(
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 167.h,
              crossAxisSpacing: 40.w,
              mainAxisSpacing: 25.h),
          itemBuilder: (context, index) => InkWell(
                borderRadius: BorderRadius.circular(16.r),
                onTap: onTap[index],
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    border: Border.all(
                      color: MyColors.lightContainerColor,
                      width: 0.6,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(12.r),
                            child: Image.asset(
                              imageList[index],
                              height: 90.h,
                              width: 114.w,
                            )),
                        padding10,
                        Text(title[index],
                            style: getSemiBoldStyle(
                                color: MyColors.black,
                                fontSize: MyFonts.size16)),
                        Text(taptoView,
                            style: getSemiBoldStyle(
                                color: MyColors.searchTextColor,
                                fontSize: MyFonts.size11))
                      ],
                    ),
                  ),
                ),
              )),
    );
  }
}
