import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/auth/view/doctorregistration/widgets/nextbutton.dart';
import 'package:idaawee/routes/route_manager.dart';

import '../../../../commons/common_widgets/CustomTextFields.dart';
import '../../../../utils/constants/assets_manager.dart';

class AddPaymentScreen extends StatelessWidget {
  const AddPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        onPressed: () {
          Navigator.pop(context);
        },
        appBarTitle: 'Add Payments Method',
      ),
      body: Container(
        height: 1.sh,
        width: 1.sw,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.homeBg),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 150,
                  color: const Color(0xff5EEF8F),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Allied Bank',
                              style: getBoldStyle(
                                  color: Colors.white, fontSize: 20),
                            )
                          ],
                        ),
                        padding15,
                        Text(
                          '4782 6782 6823 6782',
                          style:
                              getBoldStyle(color: Colors.white, fontSize: 20),
                        ),
                        padding15,
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Card Holder Name',
                                  style: getBoldStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                                Text(
                                  'Arbaz Khan',
                                  style: getBoldStyle(
                                      color: Colors.white, fontSize: 18),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Expiry Date',
                                  style: getBoldStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                                Text(
                                  '03/26',
                                  style: getBoldStyle(
                                      color: Colors.white, fontSize: 18),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                padding10,
                CustomTextField(
                  controller: TextEditingController(),
                  hintText: '',
                  onChanged: (string) {},
                  onFieldSubmitted: (string) {},
                  obscure: false,
                  label: 'Bank',
                  subTitle: '',
                ),
                padding10,
                CustomTextField(
                  controller: TextEditingController(),
                  hintText: '',
                  onChanged: (string) {},
                  onFieldSubmitted: (string) {},
                  obscure: false,
                  label: 'Account Title',
                  subTitle: '',
                ),
                padding10,
                CustomTextField(
                  controller: TextEditingController(),
                  hintText: '',
                  onChanged: (string) {},
                  onFieldSubmitted: (string) {},
                  obscure: false,
                  label: 'Account/Iban Number',
                  subTitle: '',
                ),
                padding10,
                CustomTextField(
                  controller: TextEditingController(),
                  hintText: '',
                  onChanged: (string) {},
                  onFieldSubmitted: (string) {},
                  obscure: false,
                  label: 'Branch Code',
                  subTitle: '',
                ),
                padding16,
                padding16,
                NextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.walletSummaryPage);
                    },
                    isbackbuton: false,
                    text: 'Next')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
