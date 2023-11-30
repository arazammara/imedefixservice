import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/features/doctor/doctor_profile/widgets/d_profile_tile_section.dart';

class DoctorProfileScreen extends StatelessWidget {
  const DoctorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          DProfileTileSection(),
        ],
      ),
    );
  }
}
