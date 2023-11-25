import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/user/user_profile/widget/u_help_support_section.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UserHelpAndSupportScreen extends StatelessWidget {
  const UserHelpAndSupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20.h,
            color: MyColors.black94,
          ),
        ),
        centerTitle: true,
        title: Text(
          helpSupport,
          style: getSemiBoldStyle(
              color: MyColors.black94, fontSize: MyFonts.size16),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          padding30,
          Center(
            child: Image.asset(
              AppAssets.bro,
              height: 264.h,
              width: 248.w,
            ),
          ),
          padding50,
          const UHelpSupportSection(),
        ],
      ),
    );
  }
}
