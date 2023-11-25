import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/doctor/create_offer/widgets/d_select_type_offer_section.dart';

import '../../../../commons/common_widgets/d_common_appbar.dart';
import '../../main_menu/controller/d_main_menu_controller.dart';

class DoctorCreateOfferScreen extends ConsumerWidget {
  const DoctorCreateOfferScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: DCommonAppBar(
          appBarTitle: createOffer,
          onTap: () {
            final dMainMenuCtr = ref.watch(dMainMenuProvider);
            dMainMenuCtr.setIndex(0);
          }),
      body: SizedBox(
        height: 812.h,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DSelectTypeOfferSection(),
          ],
        ),
      ),
    );
  }
}
