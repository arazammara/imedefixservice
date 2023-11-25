import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/commons/common_widgets/custom_button.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_payment_choose_card.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UserLabPaymentModeScreen extends StatefulWidget {
  const UserLabPaymentModeScreen({super.key});

  @override
  State<UserLabPaymentModeScreen> createState() =>
      _UserLabPaymentModeScreenState();
}

class _UserLabPaymentModeScreenState extends State<UserLabPaymentModeScreen> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        appBarTitle: order,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Method',
              style: getBoldStyle(color: MyColors.black),
            ),
            padding12,
            UPaymentChooseCard(
              index: 0,
              selectIndex: index,
              ontap: () {
                setState(() {
                  index = 0;
                });
              },
              title: debit_credit_savedcard,
            ),
            padding10,
            UPaymentChooseCard(
              index: 1,
              selectIndex: index,
              ontap: () {
                setState(() {
                  index = 1;
                });
              },
              title: paylater,
            ),
            padding10,
            UPaymentChooseCard(
              index: 2,
              selectIndex: index,
              ontap: () {
                setState(() {
                  index = 2;
                });
              },
              title: cashondelivery,
            ),
            const Spacer(
              flex: 10,
            ),
            CustomButton1(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.labPaymentScreen);
              },
              buttonText: 'confirm',
              backColor: MyColors.appColor,
              borderRadius: 10.r,
              fontSize: MyFonts.size22,
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
