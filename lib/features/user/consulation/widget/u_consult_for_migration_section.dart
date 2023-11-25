import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UConsultforMigrationSection extends StatelessWidget {
  const UConsultforMigrationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(consultationforMigraine,
                      style: getSemiBoldStyle(
                          color: MyColors.black, fontSize: MyFonts.size16)),
                  padding10,
                  Text(' $price:$symble 100',
                      style: getMediumStyle(
                          color: MyColors.black, fontSize: MyFonts.size14)),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100.r),
                child: Image.asset(
                  AppAssets.migraine,
                  height: 74.h,
                  width: 74.h,
                ),
              ),
            ],
          ),
          Text(doctorwillconnect,
              style: getSemiBoldStyle(
                  color: MyColors.black, fontSize: MyFonts.size16)),
          padding5,
          Text(findyourdoctorquickly,
              style: getMediumStyle(
                  color: MyColors.black, fontSize: MyFonts.size13)),
        ],
      ),
    );
  }
}
