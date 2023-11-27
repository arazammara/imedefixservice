import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/apis_commons.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/user/home/widget/u_top_search_widget.dart';
import 'package:idaawee/features/user/home/widget/u_next_appointment_widget.dart';
import 'package:idaawee/features/user/home/widget/u_our_specialization_widget.dart';
import 'package:idaawee/features/user/home/widget/u_popular_doctor.dart';

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
                          const UNextAppointmentWidget(),
                          padding16,
                          const UpopularDoctor(),
                          padding24,
                        ])))
          ],
        ),
      ),
    );
  }
}
