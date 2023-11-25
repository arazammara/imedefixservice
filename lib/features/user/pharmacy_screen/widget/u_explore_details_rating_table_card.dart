import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UExploreDetailsRatingTableCard extends StatelessWidget {
  final int stars;
  final int rating;
  final double barlength;
  const UExploreDetailsRatingTableCard(
      {super.key,
      required this.stars,
      required this.rating,
      required this.barlength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  '$stars ★',
                  style: getMediumStyle(
                      color: MyColors.black, fontSize: MyFonts.size12),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Container(
                  height: 9.h,
                  width: 258.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: MyColors.lightContainerColor),
                  child: Row(
                    children: [
                      Container(
                        height: 9.h,
                        width: barlength,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: MyColors.appColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Text(
              '$rating',
              style: getRegularStyle(
                  color: MyColors.searchTextColor, fontSize: MyFonts.size12),
            )
          ],
        ),
      ],
    );
  }
}
