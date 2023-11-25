import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/auth/widgets/u_social_button_card.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class ULoginWelcomeSection extends StatelessWidget {
  const ULoginWelcomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Text(
            welcomback,
            style:
                getMediumStyle(color: MyColors.black, fontSize: MyFonts.size24),
          ),
          padding16,
          Text(
            pleaselogin,
            style: getRegularStyle(
                color: MyColors.loginScreenTextColor, fontSize: MyFonts.size14),
          ),
          padding90,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              USocialButtonCard(
                onTap: () {},
                image: AppAssets.google,
                text: google,
              ),
              USocialButtonCard(
                onTap: () {},
                image: AppAssets.facebook,
                text: facebook,
              )
            ],
          ),
        ],
      ),
    );
  }
}
