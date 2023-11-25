import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/commons/common_widgets/confirmed_dialoge.dart';
import 'package:idaawee/commons/common_widgets/custom_button.dart';
import 'package:idaawee/features/user/consulation/widget/u_choose_payment.dart';
import 'package:idaawee/features/user/consulation/widget/u_payment_details.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

// ignore: must_be_immutable
class ConsulationPaymentScreen extends StatelessWidget {
  ConsulationPaymentScreen({super.key});

  var cardHolderNameController = TextEditingController();
  var cardNumberController = TextEditingController();
  var expiryDateController = TextEditingController();
  var cvvController = TextEditingController();
  var amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        appBarTitle: payment,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UChoosePayment(),
              padding20,
              Text(details,
                  style: getBoldStyle(
                      color: MyColors.black, fontSize: MyFonts.size16)),
              padding20,
              UPaymentDetails(
                label: cardholdername,
                controller: cardHolderNameController,
              ),
              padding16,
              UPaymentDetails(
                label: cardnumber,
                controller: cardNumberController,
              ),
              padding16,
              Row(
                children: [
                  Expanded(
                    child: UPaymentDetails(
                      label: expirydate,
                      controller: expiryDateController,
                    ),
                  ),
                  padding16,
                  Expanded(
                    child: UPaymentDetails(
                      label: cvv,
                      controller: cvvController,
                    ),
                  ),
                ],
              ),
              padding16,
              UPaymentDetails(
                label: enteramount,
                controller: amountController,
              ),
              padding64,
              CustomButton1(
                onPressed: () {
                  _showDialoge(
                    context: context,
                    onConfirm: () {
                      Navigator.pushNamed(
                          context, AppRoutes.userQuickConsultationScreen);
                    },
                  );
                },
                buttonText: paynow,
                backColor: MyColors.appColor,
                borderRadius: 6.r,
                fontSize: MyFonts.size22,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showDialoge({required BuildContext context, required Function() onConfirm}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: ShapeBorder.lerp(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            1,
          ),
          child: DialogConfirmation(
            onConfirm: onConfirm,
          ),
        );
      },
    );
  }
}
