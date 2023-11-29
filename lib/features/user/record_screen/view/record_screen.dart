import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/commons/common_widgets/u_common_record_card.dart';
import 'package:idaawee/features/user/user_main_menu/controller/main_menu_controller.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';

class RecordScreen extends ConsumerWidget {
  const RecordScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
      onWillPop: () async {
        final mainMenuCtr = ref.watch(mainMenuProvider);

        mainMenuCtr.setIndex(0);
        return true;
      },
      child: Scaffold(
          appBar: const CommonAppBar(appBarTitle: 'Record'),
          resizeToAvoidBottomInset: false,
          body: Container(
            height: 812.h,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.homeBg),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView.builder(
                padding: const EdgeInsets.only(
                    top: 16, left: 16, right: 16, bottom: 120),
                itemCount: 7,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: UCommonRecordCard(
                      image: 'assets/images/img.png',
                      name: 'Dr. Maria Elena',
                      speciality: 'Psychologist',
                      qualification: 'M.B.B.S., F.C.P.S (Psychology)',
                      status: index == 0 || index == 1
                          ? AppAssets.silver
                          : AppAssets.gold,
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRoutes.appointmentDetailsScreen);
                      },
                    ),
                  );
                }),
          )),
    );
  }
}
