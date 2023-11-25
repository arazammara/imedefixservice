import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/custom_button.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UPharmacyPopularProductCard extends StatefulWidget {
  final String itemImage;
  final String itemTitle;
  final String itemPrice;
  final String itemOldPrice;
  final String itemDiscount;
  final double itemRating;
  final Function() onTap;

  const UPharmacyPopularProductCard({
    super.key,
    required this.itemImage,
    required this.itemTitle,
    required this.itemPrice,
    required this.itemOldPrice,
    required this.itemDiscount,
    required this.itemRating,
    required this.onTap,
  });

  @override
  State<UPharmacyPopularProductCard> createState() =>
      _UPharmacyPopularProductCardState();
}

class _UPharmacyPopularProductCardState
    extends State<UPharmacyPopularProductCard> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: MyColors.containerColor)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        isFav = true;
                      });
                    },
                    child: Icon(
                      isFav ? Icons.favorite : Icons.favorite_border,
                      color:
                          isFav ? MyColors.appColor : MyColors.textLightColor,
                      size: 16.h,
                    ),
                  ),
                ],
              ),
              padding5,
              Image.asset(
                widget.itemImage,
                height: 92.h,
                width: 89.w,
              ),
              padding10,
              Text(
                widget.itemTitle,
                style: getRegularStyle(
                    color: MyColors.pharmacytextColor,
                    fontSize: MyFonts.size12),
              ),
              padding10,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            '₹${widget.itemPrice}',
                            style: getSemiBoldStyle(
                                color: MyColors.black,
                                fontSize: MyFonts.size14),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Text(
                            '₹${widget.itemOldPrice}',
                            style: getMediumStyle(
                                color: MyColors.textLightColor,
                                fontSize: MyFonts.size12),
                          ),
                        ],
                      ),
                      Text(
                        widget.itemDiscount,
                        style: getSemiBoldStyle(
                            color: MyColors.appColor, fontSize: MyFonts.size8),
                      )
                    ],
                  ),
                ],
              ),
              padding10,
              Row(
                children: [
                  Text(
                    '${widget.itemRating}',
                    style: getSemiBoldStyle(
                        color: MyColors.black, fontSize: MyFonts.size10),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  RatingBar.builder(
                    itemSize: 10.h,
                    initialRating: widget.itemRating,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                      size: 10.h,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                ],
              ),
              padding10,
              CustomButton(
                padding: 0,
                onPressed: widget.onTap,
                buttonText: addtocart,
                buttonHeight: 30.h,
                borderRadius: 5.r,
                backColor: MyColors.appColor,
                textStyle: getSemiBoldStyle(
                    color: MyColors.white, fontSize: MyFonts.size12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
