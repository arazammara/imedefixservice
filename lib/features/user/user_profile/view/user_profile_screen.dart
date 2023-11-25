import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/custom_profile_appbar.dart';
import 'package:idaawee/features/user/user_profile/widget/u_profile_tile_section.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Column(
        children: [
          CustomProfileAppbar(),
          UProfileTileSection(),
        ],
      ),
    );
  }
}
