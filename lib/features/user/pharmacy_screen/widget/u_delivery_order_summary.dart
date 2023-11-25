import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UdeliveryOrderSummary extends StatelessWidget {
  final String items;
  final String shippingCharges;
  final String totalDiscount;
  final String payableAmount;
  const UdeliveryOrderSummary(
      {super.key,
      required this.items,
      required this.shippingCharges,
      required this.totalDiscount,
      required this.payableAmount});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
            text: TextSpan(
                text: ordersummary,
                style: getBoldStyle(
                    color: MyColors.black, fontSize: MyFonts.size16),
                children: [
              TextSpan(
                  text: ' ($items item)',
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
                  color: MyColors.searchTextColor, fontSize: MyFonts.size12),
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
                  color: MyColors.searchTextColor, fontSize: MyFonts.size12),
            ),
            Text(
              '-\$$totalDiscount',
              style: getRegularStyle(
                  color: MyColors.black, fontSize: MyFonts.size12),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Divider(
            thickness: 0.9,
          ),
        ),
        Row(
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
      ],
    );
  }
}
