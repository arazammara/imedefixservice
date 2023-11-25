import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UExploreProductDetailsCard extends StatelessWidget {
  final String itemTitle;
  final String itemPrice;
  final String itemOldPrice;
  final String itemDiscount;
  final double itemRating;
  final String totalreview;
  const UExploreProductDetailsCard(
      {super.key,
      required this.itemTitle,
      required this.itemPrice,
      required this.itemOldPrice,
      required this.itemDiscount,
      required this.itemRating,
      required this.totalreview});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 180.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            itemTitle,
            style:
                getMediumStyle(color: MyColors.black, fontSize: MyFonts.size16),
          ),
          padding10,
          Stack(
            children: [
              Positioned(
                top: 12,
                left: 54,
                child: Container(
                  height: 1.h,
                  width: 40.w,
                  color: MyColors.textLightColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '₹$itemPrice',
                        style: getSemiBoldStyle(
                            color: MyColors.black, fontSize: MyFonts.size22),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Text(
                        '₹$itemOldPrice',
                        style: getMediumStyle(
                            color: MyColors.textLightColor,
                            fontSize: MyFonts.size14),
                      ),
                    ],
                  ),
                  Text(
                    itemDiscount,
                    style: getSemiBoldStyle(
                        color: MyColors.appColor, fontSize: MyFonts.size14),
                  )
                ],
              ),
            ],
          ),
          padding8,
          Text(
            inclusivealltaxes,
            style: getMediumStyle(
                color: MyColors.textLightColor, fontSize: MyFonts.size10),
          ),
          padding8,
          Row(
            children: [
              Text(
                '$itemRating',
                style: getSemiBoldStyle(
                    color: MyColors.black, fontSize: MyFonts.size12),
              ),
              SizedBox(
                width: 5.w,
              ),
              RatingBar.builder(
                itemSize: 10.h,
                initialRating: itemRating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 12.h,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                '($totalreview $rating)',
                style: getRegularStyle(
                    color: MyColors.textLightColor, fontSize: MyFonts.size10),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
