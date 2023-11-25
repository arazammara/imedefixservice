import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_payment_choose_card.dart';

class UPaymentSection extends StatefulWidget {
  const UPaymentSection({super.key});

  @override
  State<UPaymentSection> createState() => _UPaymentSectionState();
}

class _UPaymentSectionState extends State<UPaymentSection> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 0.7.sh,
      width: 1.sw,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
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
          ],
        ),
      ),
    );
  }
}
