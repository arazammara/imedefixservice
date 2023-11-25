import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/CustomTextFields.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/commons/outline_custom_button.dart';
import 'package:idaawee/features/user/pharmacy_screen/view/user_cancel_order_screen_one.dart';
import 'package:idaawee/features/user/pharmacy_screen/view/change_address.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_order_history_details_card.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_order_history_payment_card.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_order_history_stpper_section.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_order_history_summary.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';

// ignore: must_be_immutable
class UserOrderHistoryDetailScreen extends StatelessWidget {
  UserOrderHistoryDetailScreen({super.key});
  var addressController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        appBarTitle: orderDetails,
      ),
      body: SizedBox(
        height: 812.h,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const UOrderHistoryDetailCard(
                orderId: 'hka-48338-71309388',
                orderPrice: 479,
                image: AppAssets.item,
                orderTitle:
                    'healthkart hk vitals super strength fish oil purity 84%, ',
                orderSubTitle: '60 softgels',
              ),
              padding24,
              const UOrderHistoryStepperSection(),
              padding24,
              const UOrderHistoryPaymentCard(),
              padding24,
              const UOrderHistorySummary(
                  item: 2,
                  shippingCharges: '769',
                  totalDiscount: '200',
                  payableAmount: '1,123'),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: CustomTextField(
                  subTitleOnTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ChangeAddress()));
                  },
                  texfieldHeight: 97.h,
                  maxLines: 2,
                  controller: addressController,
                  hintText: enteryouraddress,
                  onChanged: (value) {},
                  onFieldSubmitted: (value) {},
                  obscure: false,
                  label: deliveryaddress,
                  subTitle: change,
                ),
              ),
              padding5,
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: OutlineCustomButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const UserCancelOrderScreenOne()));
                  },
                  buttonText: cancelOrder,
                  textColor: MyColors.appColor,
                  borderRadius: 6.r,
                  backColor: MyColors.appColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
