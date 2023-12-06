import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/apis_commons.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/user/home/widget/u_popular_doctor_card.dart';
import 'package:idaawee/features/user/home/widget/u_top_search_widget.dart';
import 'package:idaawee/features/user/home/widget/u_next_appointment_widget.dart';
import 'package:idaawee/features/user/our_speciallist/widgets/u_review_tab.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

import '../../../../utils/constants/assets_manager.dart';

// ignore: must_be_immutable
class DoctorHomeScreens extends ConsumerWidget {
  const DoctorHomeScreens({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: const CommonAppBar(
        isBackButton: false,
        appBarTitle: 'Dr Maria Elena',
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
                          const UNextAppointmentWidget(
                            isdoctor: true,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListView.builder(
                                    shrinkWrap: true,
                                    padding: EdgeInsets.zero,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: 1,
                                    itemBuilder: (context, index) => Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10.0),
                                          child: UPopularDoctorCard(
                                            onTap: () {},
                                            image: 'assets/images/Vector.png',
                                            name: 'Shared Documents',
                                            speciality: 'Upload on 10 May',
                                            rating: 0,
                                            review: '2 Documents',
                                          ),
                                        )),
                              ],
                            ),
                          ),
                          Container(
                            height: 500,
                            child: UReviewTabview(),
                          )
                        ])))
          ],
        ),
      ),
    );
  }
}
