import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UpopularLabTestDoctorDetailCard extends StatelessWidget {
  final String doctorName;
  final String doctorType;
  final String doctorImage;
  final Function() viewDetail;
  final Function() orders;
  const UpopularLabTestDoctorDetailCard(
      {super.key,
      required this.doctorName,
      required this.doctorType,
      required this.doctorImage,
      required this.viewDetail,
      required this.orders});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(50.r),
            child: Image.asset(
              doctorImage,
              height: 32.h,
              width: 32.h,
            )),
        SizedBox(
          width: 10.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(doctorName,
                style: getMediumStyle(
                    color: MyColors.black, fontSize: MyFonts.size12)),
            Text(doctorType,
                style: getSemiBoldStyle(
                    color: MyColors.loginScreenTextColor,
                    fontSize: MyFonts.size10)),
          ],
        ),
        const Spacer(),
        InkWell(
          onTap: viewDetail,
          child: Container(
            height: 24.h,
            width: 83.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(color: MyColors.appColor),
            ),
            child: Center(
              child: Text(
                viewDetails,
                style: getBoldStyle(
                    color: MyColors.appColor, fontSize: MyFonts.size10),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10.w,
        ),
        InkWell(
          onTap: orders,
          child: Container(
            height: 24.h,
            width: 53.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: MyColors.blueaccent),
            child: Center(
              child: Text(
                order,
                style: getBoldStyle(
                    color: MyColors.white, fontSize: MyFonts.size10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}