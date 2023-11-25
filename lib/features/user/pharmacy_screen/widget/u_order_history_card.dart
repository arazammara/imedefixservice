import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UOrderHistoryCard extends StatelessWidget {
  final String orderId;
  final String orderDate;
  final int orderPrice;
  final String image;
  final String orderTitle;
  final String orderSubTitle;
  final String orderStatus;
  final Function() viewdetail;

  const UOrderHistoryCard({
    super.key,
    required this.orderId,
    required this.orderDate,
    required this.orderPrice,
    required this.image,
    required this.orderTitle,
    required this.orderSubTitle,
    required this.orderStatus,
    required this.viewdetail,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Container(
        height: 180.h,
        width: 1.sw,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            border: Border.all(color: MyColors.lightgrey)),
        child: Column(
          children: [
            Container(
              height: 50.h,
              width: 1.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6.r),
                  topRight: Radius.circular(6.r),
                ),
                color: MyColors.lightgrey,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          orderid,
                          style: getRegularStyle(
                              color: MyColors.searchTextColor,
                              fontSize: MyFonts.size12),
                        ),
                        Text(
                          orderId,
                          style: getMediumStyle(
                              color: MyColors.black, fontSize: MyFonts.size12),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          orderDate,
                          style: getRegularStyle(
                              color: MyColors.searchTextColor,
                              fontSize: MyFonts.size12),
                        ),
                        Text(
                          '\$$price',
                          style: getMediumStyle(
                              color: MyColors.black, fontSize: MyFonts.size12),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            padding15,
            Row(
              children: [
                Image.asset(
                  AppAssets.item,
                  height: 85.h,
                  width: 85.w,
                ),
                padding15,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 160.w,
                      child: Text(
                        orderTitle,
                        style: getRegularStyle(
                            color: MyColors.black, fontSize: MyFonts.size12),
                      ),
                    ),
                    padding6,
                    Text(
                      orderSubTitle,
                      style: getRegularStyle(
                          color: MyColors.black, fontSize: MyFonts.size10),
                    ),
                    padding12,
                    InkWell(
                      onTap: viewdetail,
                      child: Row(
                        children: [
                          Text(
                            viewDetails,
                            style: getSemiBoldStyle(
                                color: MyColors.appColor,
                                fontSize: MyFonts.size12),
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Image.asset(
                            AppAssets.arrowcircleright,
                            height: 14.h,
                            width: 14.w,
                            color: MyColors.appColor,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 20.h,
                  width: 75.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6.r),
                      bottomRight: Radius.circular(6.r),
                    ),
                    color: MyColors.green.withOpacity(0.2),
                  ),
                  child: Center(
                    child: Text(
                      orderStatus,
                      style: getMediumStyle(
                          color: MyColors.green, fontSize: MyFonts.size10),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
