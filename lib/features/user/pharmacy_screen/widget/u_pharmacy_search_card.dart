import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UPharmacySearchCard extends StatelessWidget {
  final bool isFav;
  final Function() favroite;
  final String itemImage;
  final String itemTitle;
  final String itemPrice;
  final String itemMaterial;
  final String itemOldPrice;
  final String itemDiscount;
  final double itemRating;
  final String totalreview;
  final Function() onTap;
  const UPharmacySearchCard(
      {super.key,
      required this.favroite,
      required this.itemImage,
      required this.itemTitle,
      required this.itemPrice,
      required this.itemOldPrice,
      required this.itemDiscount,
      required this.itemRating,
      required this.itemMaterial,
      required this.onTap,
      required this.totalreview,
      required this.isFav});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18, bottom: 10),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 132.h,
          width: 1.sw,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: MyColors.containerColor)),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Image.asset(
                  itemImage,
                  height: 92.h,
                  width: 92.w,
                ),
                SizedBox(
                  width: 10.w,
                ),
                SizedBox(
                  width: 205.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: SizedBox(
                              width: 175.w,
                              child: Text(
                                itemTitle,
                                style: getRegularStyle(
                                    color: MyColors.pharmacytextColor,
                                    fontSize: MyFonts.size12),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: favroite,
                            child: Icon(
                              isFav ? Icons.favorite : Icons.favorite_border,
                              color: isFav
                                  ? MyColors.appColor
                                  : MyColors.textLightColor,
                              size: 16.h,
                            ),
                          ),
                        ],
                      ),
                      padding5,
                      SizedBox(
                        width: 175.w,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              itemMaterial,
                              style: getRegularStyle(
                                  color: MyColors.searchTextColor,
                                  fontSize: MyFonts.size10),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Stack(
                              children: [
                                Positioned(
                                  top: 7.5,
                                  left: 35,
                                  child: Container(
                                    height: 1.h,
                                    width: 30.w,
                                    color: MyColors.textLightColor,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          '₹$itemPrice',
                                          style: getSemiBoldStyle(
                                              color: MyColors.black,
                                              fontSize: MyFonts.size14),
                                        ),
                                        SizedBox(
                                          width: 15.w,
                                        ),
                                        Text(
                                          '₹$itemOldPrice',
                                          style: getMediumStyle(
                                              color: MyColors.textLightColor,
                                              fontSize: MyFonts.size12),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      itemDiscount,
                                      style: getSemiBoldStyle(
                                          color: MyColors.appColor,
                                          fontSize: MyFonts.size8),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            padding10,
                            Row(
                              children: [
                                Text(
                                  '$itemRating',
                                  style: getSemiBoldStyle(
                                      color: MyColors.black,
                                      fontSize: MyFonts.size10),
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
                                  itemPadding: const EdgeInsets.symmetric(
                                      horizontal: 1.0),
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 10.h,
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
                                      color: MyColors.textLightColor,
                                      fontSize: MyFonts.size10),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
