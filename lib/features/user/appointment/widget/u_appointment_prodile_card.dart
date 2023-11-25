import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UAppointmentProfileCard extends StatelessWidget {
  final String image;
  final String name;
  final String speciality;
  final double price;

  const UAppointmentProfileCard(
      {super.key,
      required this.image,
      required this.name,
      required this.speciality,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: Image.asset(
            image,
            width: 144.w,
            height: 141.h,
            fit: BoxFit.cover,
          ),
        ),
        padding10,
        SizedBox(
          width: 182.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: getSemiBoldStyle(
                      color: MyColors.black94, fontSize: MyFonts.size24)),
              padding5,
              Text(speciality,
                  style: getSemiBoldStyle(
                      color: MyColors.appColor, fontSize: MyFonts.size16)),
              padding24,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(payment,
                      style: getSemiBoldStyle(
                          color: MyColors.black, fontSize: MyFonts.size18)),
                  padding5,
                  Text('\$$price.00',
                      style: getBoldStyle(
                          color: MyColors.appColor, fontSize: MyFonts.size20)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
