import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/user/user_profile/widget/u_help_support_card.dart';
import 'package:idaawee/routes/route_manager.dart';

class UHelpSupportSection extends StatelessWidget {
  const UHelpSupportSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: 1.sw,
        decoration: BoxDecoration(
            color: MyColors.white,
            borderRadius: BorderRadius.circular(
              20.r,
            ),
            boxShadow: const [
              BoxShadow(
                color: MyColors.lightContainerColor,
                blurRadius: 10,
                offset: Offset(0, 0),
              )
            ]),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              padding15,
              UHelpSupportCard(
                  text: aboutUs,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.about);
                  }),
              UHelpSupportCard(
                  text: contactUs,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.contactUs);
                  }),
              UHelpSupportCard(
                  text: privacyPolicy,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.privactPolicy);
                  }),
              UHelpSupportCard(
                  text: termsandConditions,
                  onPressed: () {
                    Navigator.pushNamed(
                        context, AppRoutes.userTermAndConditionScreen);
                  }),
              UHelpSupportCard(
                  text: fAQ,
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.faq);
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
