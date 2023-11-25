import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/user/user_profile/widget/u_address_information.dart';
import 'package:idaawee/features/user/user_profile/widget/u_contact_textfield.dart';
import 'package:idaawee/features/user/user_profile/widget/u_contact_time_card.dart';

// ignore: must_be_immutable
class UserContactUsScreen extends StatelessWidget {
  UserContactUsScreen({super.key});

  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        appBarTitle: contactUs,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            UContactTextField(
              controller: phoneController,
              hint: phoneNumber,
            ),
            padding15,
            UContactTextField(
              controller: emailController,
              hint: emailAddress,
            ),
            padding15,
            const UContactTimeCard(),
            padding30,
            UAddressInformation(
                controller: addressController, hint: addressinformation)
          ],
        ),
      ),
    );
  }
}
