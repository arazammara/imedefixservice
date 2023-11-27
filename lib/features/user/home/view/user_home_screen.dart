import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/apis_commons.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/user/home/widget/u_book_clinic_appointment_section.dart';
import 'package:idaawee/features/user/home/widget/u_consult_doctor_over_video_section.dart';
import 'package:idaawee/features/user/home/widget/u_top_search_widget.dart';
import 'package:idaawee/features/user/home/widget/u_view_all_clinic_section.dart';
import 'package:idaawee/features/user/home/widget/u_consultation_with_doctor_section.dart';
import 'package:idaawee/features/user/home/widget/u_for_appointment_doctor_section.dart';
import 'package:idaawee/features/user/home/widget/u_our_specialization_widget.dart';
import 'package:idaawee/features/user/home/widget/u_premium_video_consultant_section.dart';
import 'package:idaawee/features/user/home/widget/u_premium_clinic_consultant_section.dart';
import 'package:idaawee/features/user/home/widget/u_see_all_block_section.dart';
import 'package:idaawee/features/user/home/widget/u_specialist_section.dart';
import 'package:idaawee/features/user/home/widget/u_specialized_doctor_section.dart';
import 'package:idaawee/features/user/home/widget/u_surgery_section.dart';

import '../../../../utils/constants/assets_manager.dart';

// ignore: must_be_immutable
class UserHomeScreen extends ConsumerWidget {
  const UserHomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const CommonAppBar(
        isBackButton: false,
        appBarTitle: 'Handwerker',
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppAssets.homeBg), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
                child: SingleChildScrollView(
                    padding: EdgeInsets.zero,
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          padding16,
                          const UTopSearchWidget(),
                          padding16,
                          UOurSpecializationWidget(),
                          padding16,
                          const UConsultationWithDoctorSection(),
                          padding16,
                          const USpecializedDoctorSection(),
                          padding16,
                          const UForAppointmentDoctorSection(),
                          padding16,
                          USpecialListSection(),
                          padding16,
                          const UViewAllClinicSection(),
                          padding16,
                          const USurgerySection(),
                          padding16,
                          const UConsultDoctorOverVideoSection(),
                          padding16,
                          const UBookClinicAppointmentSection(),
                          padding16,
                          const UPremiumVideoConsultantSection(),
                          padding16,
                          const UPremiumClientConsultantSection(),
                          padding16,
                          const USeeAllBlockSection(),
                          padding85,
                        ])))
          ],
        ),
      ),
    );
  }
}
