import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/CustomTextFields.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_place_order_card.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_place_order_summery.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';

class UPlaceOrderSection extends StatefulWidget {
  const UPlaceOrderSection({super.key});

  @override
  State<UPlaceOrderSection> createState() => _UPlaceOrderSectionState();
}

class _UPlaceOrderSectionState extends State<UPlaceOrderSection> {
  int index = 0;
  var paymentTypeController = TextEditingController();
  var addressTypeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.7.sh,
      width: 1.sw,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            UPlaceOrderCard(
                add: () {
                  setState(() {
                    index++;
                  });
                },
                minus: () {
                  setState(() {
                    index > 0 ? index-- : null;
                  });
                },
                index: index,
                image: AppAssets.item,
                title: 'Panadol CCT Plus Extra High Quality',
                subtitle: '60 softgels',
                price: 500,
                oldPrice: 900,
                discount: 400,
                cancel: () {},
                onTap: () {}),
            UPlaceOrderSummery(
                payableAmount: '560',
                index: index,
                totalmrps: '1998',
                shippingCharges: 'Free',
                totalDiscount: '800'),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  CustomTextField(
                    texfieldHeight: 54.h,
                    controller: paymentTypeController,
                    hintText: cashondelivery,
                    onChanged: (value) {},
                    onFieldSubmitted: (value) {},
                    obscure: false,
                    label: paymenttype,
                    subTitle: '',
                  ),
                  padding15,
                  CustomTextField(
                    texfieldHeight: 54.h,
                    controller: addressTypeController,
                    hintText: deliveryaddress,
                    onChanged: (value) {},
                    onFieldSubmitted: (value) {},
                    obscure: false,
                    label: deliveryaddress,
                    subTitle: '',
                  ),
                  SizedBox(
                    height: 200.h,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
