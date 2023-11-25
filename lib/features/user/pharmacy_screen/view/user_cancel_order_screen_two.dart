import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/CustomTextFields.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_cancel_order_card.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_cancel_order_status.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_order_history_payment_card.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import '../../../../utils/constants/font_manager.dart';

// ignore: must_be_immutable
class UserCancelOrderScreenTwo extends StatelessWidget {
  UserCancelOrderScreenTwo({super.key});
  var addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CommonAppBar(
          appBarTitle: cancelorder,
        ),
        body: SizedBox(
          height: 812.h,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    cancelled,
                    style: getBoldStyle(
                        color: MyColors.cancelRed, fontSize: MyFonts.size16),
                  ),
                ),
                padding15,
                const UCancelOrderCard(
                  orderId: 'hka-48338-71309388',
                  orderPrice: 479,
                  image: AppAssets.item,
                  orderTitle:
                      'healthkart hk vitals super strength fish oil purity 84%, ',
                  orderSubTitle: '60 softgels',
                ),
                padding24,
                const UCancelOrderStatus(),
                padding15,
                const UOrderHistoryPaymentCard(),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: CustomTextField(
                    texfieldHeight: 97.h,
                    maxLines: 2,
                    controller: addressController,
                    hintText: enteryouraddress,
                    onChanged: (value) {},
                    onFieldSubmitted: (value) {},
                    obscure: false,
                    label: deliveryaddress,
                    subTitle: '',
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
