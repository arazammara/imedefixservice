import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/user/user_profile/widget/u_edit_profile_details_section.dart';
import 'package:idaawee/features/user/user_profile/widget/u_editable_section.dart';

class UserEditProfileScreen extends StatelessWidget {
  const UserEditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        appBarTitle: editProfile,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            const UEditProfileDetailsSection(),
            Expanded(
              child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: UEditableSection()),
            ),
          ],
        ),
      ),
    );
  }
}
