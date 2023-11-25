import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_delivery_card.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_delivery_order_summary.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UDeliverySection extends StatelessWidget {
  const UDeliverySection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      height: 0.7.sh,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  AppAssets.vane,
                  height: 16.h,
                  width: 16.h,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  '$deliveryby Fri, 24 feb',
                  style: getMediumStyle(
                      color: MyColors.black, fontSize: MyFonts.size14),
                ),
              ],
            ),
            padding15,
            UDeliveryCard(
                image: AppAssets.item,
                title: 'Panadol CCT Plus Extra High Quality',
                subtitle: '60 softgels',
                price: 500,
                oldPrice: 900,
                discount: 400,
                cancel: () {},
                onTap: () {}),
            padding30,
            const UdeliveryOrderSummary(
              items: '2',
              payableAmount: '1,198',
              shippingCharges: 'Free',
              totalDiscount: '800',
            )
          ],
        ),
      ),
    );
  }
}
