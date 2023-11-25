import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UPlaceOrderCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final int price;
  final int oldPrice;
  final int discount;
  final Function() cancel;
  final Function() onTap;
  final Function() add;
  final Function() minus;
  final int index;

  const UPlaceOrderCard(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.price,
      required this.oldPrice,
      required this.discount,
      required this.cancel,
      required this.index,
      required this.add,
      required this.minus,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        height: 203.h,
        width: 1.sw,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          border: Border.all(color: MyColors.lightContainerColor),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            image,
                            height: 92.h,
                            width: 92.h,
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              InkWell(
                                onTap: add,
                                child: Image.asset(
                                  AppAssets.addsquare,
                                  height: 18.h,
                                  width: 18.h,
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Container(
                                height: 20.h,
                                width: 40.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.5.r),
                                  color: MyColors.lightgrey,
                                ),
                                child: Center(
                                  child: Text(index.toString(),
                                      style: getMediumStyle(
                                          color: MyColors.black,
                                          fontSize: MyFonts.size12)),
                                ),
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              InkWell(
                                onTap: minus,
                                child: Image.asset(
                                  AppAssets.minussquare,
                                  height: 18.h,
                                  width: 18.h,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 195.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 140.w,
                                  child: Text(
                                    title,
                                    style: getRegularStyle(
                                        color: MyColors.pharmacytextColor,
                                        fontSize: MyFonts.size11),
                                  ),
                                ),
                                InkWell(
                                  onTap: cancel,
                                  child: Image.asset(
                                    AppAssets.closesquare,
                                    height: 18.h,
                                    width: 18.w,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          padding10,
                          Text(
                            subtitle,
                            style: getRegularStyle(
                                color: MyColors.searchTextColor,
                                fontSize: MyFonts.size10),
                          ),
                          padding10,
                          Stack(
                            children: [
                              Positioned(
                                top: 7.5,
                                left: 40,
                                child: Container(
                                  height: 1.h,
                                  width: 30.w,
                                  color: MyColors.textLightColor,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '₹$price',
                                    style: getSemiBoldStyle(
                                        color: MyColors.black,
                                        fontSize: MyFonts.size14),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Text(
                                    '₹$oldPrice',
                                    style: getMediumStyle(
                                      color: MyColors.searchTextColor,
                                      fontSize: MyFonts.size12,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15.w,
                                  ),
                                  Text(
                                    'Save₹$discount',
                                    style: getSemiBoldStyle(
                                        color: MyColors.appColor,
                                        fontSize: MyFonts.size8),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          padding24,
                        ],
                      ),
                    ],
                  ),
                  padding18,
                ],
              ),
            ),
            InkWell(
              onTap: onTap,
              child: Container(
                height: 36.h,
                width: 1.sw,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(5.r),
                        bottomRight: Radius.circular(5.r)),
                    color: MyColors.blueaccent),
                child: Center(
                  child: Text(
                    'You Are Saving ₹$discount On This Purchase',
                    style: getMediumStyle(
                        color: MyColors.white, fontSize: MyFonts.size12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
