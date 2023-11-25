import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/u_custom_appbar.dart';
import 'package:idaawee/features/user/lab_screen/widget/u_genetic_testing_lab_section.dart';
import 'package:idaawee/features/user/lab_screen/widget/u_popular_lab_test_section.dart';
import 'package:idaawee/features/user/lab_screen/widget/u_test_categories_section.dart';
import 'package:idaawee/features/user/user_main_menu/controller/main_menu_controller.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';

class UserLabScreen extends ConsumerWidget {
  const UserLabScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
      onWillPop: () async {
        final mainMenuCtr = ref.watch(mainMenuProvider);

        mainMenuCtr.setIndex(0);
        return true;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SizedBox(
            height: 812.h,
            child: Column(children: [
              UCustomAppBar(
                isBackButton: true,
                onPress: () {
                  final mainMenuCtr = ref.watch(mainMenuProvider);
                  mainMenuCtr.setIndex(0);
                },
                onSearchTap: () {
                  Navigator.pushNamed(context, AppRoutes.labSearchScreen);
                },
                profileImage: AppAssets.profile,
                userName: 'Amelia Adam',
              ),
              const Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(children: [
                    UTestCategoriesSection(),
                    padding10,
                    UPopularLabTestSection(),
                    padding16,
                    UGeneticTestingLabSection(),
                  ]),
                ),
              ),
            ]),
          )),
    );
  }
}
