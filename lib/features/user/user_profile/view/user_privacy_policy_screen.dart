import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UserPrivacyPolicyScreen extends StatelessWidget {
  const UserPrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        appBarTitle: privacyPolicy,
      ),
      body: SizedBox(
        height: 812.h,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                padding20,
                Text(
                  makelifeeasierwithalittle,
                  style: getMediumStyle(
                      color: MyColors.black, fontSize: MyFonts.size16),
                ),
                padding10,
                Text(
                  'idaawee is a platform that aims to make life easier for people with special needs, and to facilitate their access to the services they need, and to provide them with the necessary support to integrate them into society.',
                  style: getRegularStyle(
                      color: MyColors.profilegrey, fontSize: MyFonts.size12),
                ),
                padding20,
                Text(
                  makelifeeasierwithalittle,
                  style: getMediumStyle(
                      color: MyColors.black, fontSize: MyFonts.size16),
                ),
                padding10,
                Text(
                  'idaawee is a platform that aims to make life easier for people with special needs, and to facilitate their access to the services they need, and to provide them with the necessary support to integrate them into society.',
                  style: getRegularStyle(
                      color: MyColors.profilegrey, fontSize: MyFonts.size12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
