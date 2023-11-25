import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UCancelOrderCard extends StatelessWidget {
  final String orderId;
  final int orderPrice;
  final String image;
  final String orderTitle;
  final String orderSubTitle;

  const UCancelOrderCard({
    super.key,
    required this.orderId,
    required this.orderPrice,
    required this.image,
    required this.orderTitle,
    required this.orderSubTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Container(
        height: 149.h,
        width: 1.sw,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.r),
            border: Border.all(color: MyColors.lightgrey)),
        child: Column(
          children: [
            Container(
              height: 24.h,
              width: 1.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(6.r),
                  topRight: Radius.circular(6.r),
                ),
                color: MyColors.pink,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                SizedBox(
                  width: 15.w,
                ),
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
                    padding18,
                    Text(
                      '\$$orderPrice',
                      style: getSemiBoldStyle(
                          color: MyColors.black, fontSize: MyFonts.size16),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 2.75.h,
            ),
          ],
        ),
      ),
    );
  }
}
