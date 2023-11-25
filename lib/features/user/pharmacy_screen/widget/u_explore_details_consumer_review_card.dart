import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UExploreDetailsConsumerReviewCard extends StatelessWidget {
  final double consumerRating;
  final Function() informations;
  const UExploreDetailsConsumerReviewCard(
      {super.key, required this.consumerRating, required this.informations});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(customerReviews,
            style: getMediumStyle(
                color: MyColors.searchTextColor, fontSize: MyFonts.size14)),
        padding10,
        InkWell(
          onTap: informations,
          child: Container(
            height: 62.h,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                border: Border.all(color: MyColors.lightContainerColor)),
            child: Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              '$rating Out of 5',
                              style: getMediumStyle(
                                  color: MyColors.black,
                                  fontSize: MyFonts.size14),
                            ),
                            RatingBar.builder(
                              itemSize: 10.h,
                              initialRating: consumerRating,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding:
                                  const EdgeInsets.symmetric(horizontal: 1.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 12.h,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ],
                        ),
                        Text(
                          '1 rating, 1 reviews',
                          style: getRegularStyle(
                              color: MyColors.searchTextColor,
                              fontSize: MyFonts.size12),
                        ),
                      ],
                    ),
                    RotatedBox(
                      quarterTurns: 3,
                      child: Image.asset(
                        AppAssets.arrowleft,
                        height: 16.h,
                        width: 16.w,
                      ),
                    ),
                  ],
                )),
          ),
        ),
      ],
    );
  }
}
