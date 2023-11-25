import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/common_rectangular_cached_network_image.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class SpecializedVideoConsultationDoctors extends StatelessWidget {
  final String consultDoctorImage;
  final String consultDoctorTitle;
  final String consultDoctorSubtitle;
  final String consultDoctorAvailableTime;
  final int price;
  final VoidCallback onTap;
  const SpecializedVideoConsultationDoctors(
      {super.key,
      required this.consultDoctorImage,
      required this.consultDoctorTitle,
      required this.consultDoctorSubtitle,
      required this.consultDoctorAvailableTime,
      required this.price,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(right: 15.w),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffECF0F0)),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CachedRectangularNetworkImageWidget(
              image: consultDoctorImage,
              height: 117.h,
              width: 160,
            ),
            padding5,
            Padding(
              padding: const EdgeInsets.only(top: 5.0, left: 5.0, right: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(consultDoctorTitle,
                        style: getSemiBoldStyle(
                            color: MyColors.textColor,
                            fontSize: MyFonts.size14)),
                  ),
                  padding3,
                  Container(
                    constraints: BoxConstraints(maxWidth: 160.w),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text(consultDoctorSubtitle,
                          textAlign: TextAlign.center,
                          style: getMediumStyle(
                              color: MyColors.grey, fontSize: MyFonts.size11)),
                    ),
                  ),
                  padding3,
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(consultDoctorAvailableTime,
                        style: getBoldStyle(
                            color: MyColors.loginScreenTextColor,
                            fontSize: MyFonts.size10)),
                  ),
                  padding3,
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: Text(
                      'Price: \$ $price',
                      style: getBoldStyle(
                          color: MyColors.appColor, fontSize: MyFonts.size15),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
