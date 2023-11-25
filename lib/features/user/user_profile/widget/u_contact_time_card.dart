import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UContactTimeCard extends StatelessWidget {
  const UContactTimeCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.h,
      width: 1.sw,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          border: Border.all(color: MyColors.lightContainerColor, width: 0.6)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Image.asset(
              AppAssets.users,
              height: 18.h,
              width: 18.w,
            ),
            SizedBox(
              width: 16.w,
            ),
            Text(hoursofoperation,
                style: getMediumStyle(
                    color: MyColors.searchTextColor, fontSize: MyFonts.size14)),
            SizedBox(
              width: 1.w,
            ),
            Text('10AM - 6PM',
                style: getMediumStyle(
                    color: MyColors.black, fontSize: MyFonts.size14)),
          ],
        ),
      ),
    );
  }
}
