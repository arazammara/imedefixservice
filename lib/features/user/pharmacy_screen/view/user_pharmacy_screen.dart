import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/u_custom_appbar.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_pharmacy_banner.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_pharmacy_popular_product_section.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_pharmacy_tap_section.dart';
import 'package:idaawee/features/user/user_main_menu/controller/main_menu_controller.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';

class UserPharmacyScreen extends ConsumerWidget {
  const UserPharmacyScreen({super.key});

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
        body: Column(
          children: [
            UCustomAppBar(
              onPress: () {
                final mainMenuCtr = ref.watch(mainMenuProvider);
                mainMenuCtr.setIndex(0);
              },
              isBackButton: true,
              onSearchTap: () {
                Navigator.pushNamed(context, AppRoutes.pharmacySearchScreen);
              },
              profileImage: AppAssets.profile,
              userName: 'Amelia Adam',
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    padding18,
                    const UPharmacyBanner(),
                    padding18,
                    UPharmacyTabSection(),
                    padding18,
                    const UPharmacyPopularProductSection(),
                    padding30,
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
