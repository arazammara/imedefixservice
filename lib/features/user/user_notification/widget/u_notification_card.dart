import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UNotificationCard extends StatelessWidget {
  final String date;
  final String timeago;
  final String title;
  const UNotificationCard(
      {super.key,
      required this.date,
      required this.timeago,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 1.sw,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: MyColors.borderColor, width: 1.w),
          boxShadow: const [
            BoxShadow(
                color: MyColors.borderColor,
                offset: Offset(0, 4),
                blurRadius: 4,
                spreadRadius: 0)
          ],
          color: MyColors.workinghourColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Row(
          children: [
            Image.asset(
              AppAssets.noti,
              height: 21.h,
              width: 20.w,
            ),
            const SizedBox(
              width: 15,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 265.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        date,
                        style: getRegularStyle(
                            color: MyColors.black, fontSize: MyFonts.size12),
                      ),
                      Text(
                        timeago,
                        style: getRegularStyle(
                            color: MyColors.black, fontSize: MyFonts.size10),
                      ),
                    ],
                  ),
                ),
                Text(
                  title,
                  style: getRegularStyle(
                      color: MyColors.black, fontSize: MyFonts.size12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
