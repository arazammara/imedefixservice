import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UCommonRecordCard extends StatelessWidget {
  final String image;
  final String name;
  final String speciality;
  final String qualification;
  final String status;
  final VoidCallback? onTap;
  final VoidCallback? patinumOnTap;
  const UCommonRecordCard(
      {super.key,
      required this.image,
      required this.name,
      required this.speciality,
      required this.qualification,
      required this.status,
      this.onTap,
      this.patinumOnTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 117.h,
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(6.r),
                  child: Image.asset('assets/images/img.png')),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: patinumOnTap,
                    child: Image.asset(
                      status,
                      height: 17.h,
                      width: 137.w,
                    ),
                  ),
                  padding4,
                  Text(
                    name,
                    style: getBoldStyle(
                        color: MyColors.black, fontSize: MyFonts.size18),
                  ),
                  padding4,
                  Text(
                    speciality,
                    style: getSemiBoldStyle(
                        color: MyColors.grey, fontSize: MyFonts.size14),
                  ),
                  padding4,
                  Text(
                    qualification,
                    style: getSemiBoldStyle(
                        color: MyColors.grey, fontSize: MyFonts.size14),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
