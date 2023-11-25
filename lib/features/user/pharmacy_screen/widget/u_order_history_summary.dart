import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UOrderHistorySummary extends StatelessWidget {
  final int item;
  final String shippingCharges;
  final String totalDiscount;
  final String payableAmount;
  const UOrderHistorySummary(
      {super.key,
      required this.item,
      required this.shippingCharges,
      required this.totalDiscount,
      required this.payableAmount});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      text: ordersummary,
                      style: getBoldStyle(
                          color: MyColors.black, fontSize: MyFonts.size16),
                      children: [
                    TextSpan(
                        text: ' ($item items)',
                        style: getMediumStyle(
                            color: MyColors.black, fontSize: MyFonts.size12)),
                  ])),
              padding30,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    shippingcharges,
                    style: getRegularStyle(
                        color: MyColors.searchTextColor,
                        fontSize: MyFonts.size12),
                  ),
                  Text(
                    '\$$shippingCharges',
                    style: getRegularStyle(
                        color: MyColors.black, fontSize: MyFonts.size12),
                  ),
                ],
              ),
              padding10,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    totaldiscount,
                    style: getRegularStyle(
                        color: MyColors.searchTextColor,
                        fontSize: MyFonts.size12),
                  ),
                  Text(
                    '-\$$totalDiscount',
                    style: getRegularStyle(
                        color: MyColors.green, fontSize: MyFonts.size12),
                  ),
                ],
              ),
            ],
          ),
        ),
        padding15,
        Container(
          height: 46.h,
          width: 1.sw,
          color: MyColors.lightgrey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(payableamount,
                    style: getMediumStyle(
                        color: MyColors.black, fontSize: MyFonts.size14)),
                Text('\$$payableAmount',
                    style: getSemiBoldStyle(
                        color: MyColors.black, fontSize: MyFonts.size14)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
