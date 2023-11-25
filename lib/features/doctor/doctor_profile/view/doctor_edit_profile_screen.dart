import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/doctor/doctor_profile/widgets/d_editable_section.dart';
import 'package:idaawee/features/doctor/doctor_profile/widgets/d_edit_profile_detail_section.dart';

class DoctorEditProfileScreen extends StatelessWidget {
  const DoctorEditProfileScreen({super.key});

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
            const DEditProfileDetailsSection(),
            Expanded(
              child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: DEditableSection()),
            ),
          ],
        ),
      ),
    );
  }
}
