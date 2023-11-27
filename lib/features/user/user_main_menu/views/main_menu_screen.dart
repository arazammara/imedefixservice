import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/features/user/user_main_menu/controller/main_menu_controller.dart';
import 'package:idaawee/features/user/user_main_menu/widgets/bottom_bar_item.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';

class UserMainMenuScreen extends ConsumerStatefulWidget {
  const UserMainMenuScreen({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<UserMainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends ConsumerState<UserMainMenuScreen> {
  @override
  Widget build(BuildContext context) {
    final mainMenuCtr = ref.watch(mainMenuProvider);
    return WillPopScope(
      onWillPop: () async {
        if (mainMenuCtr.index != 0) {
          mainMenuCtr.setIndex(0);
          return false;
        } else {
          SystemNavigator.pop();
          return true;
        }
      },
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: IndexedStack(
          children: [mainMenuCtr.screens[mainMenuCtr.index]],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () {
            mainMenuCtr.setIndex(2);
          },
          elevation: 10,
          backgroundColor: MyColors.white,
          child: Image.asset(
            AppAssets.add,
            width: 25.w,
            height: 25.h,
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 10,
          color: MyColors.whiteColor,
          surfaceTintColor: MyColors.white,
          shadowColor: MyColors.black,
          shape: const CircularNotchedRectangle(),
          notchMargin: 8.h,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 0.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BottomBarItem(
                  title: 'Home',
                  mainMenuCtr: mainMenuCtr,
                  onTap: () {
                    mainMenuCtr.setIndex(0);
                  },
                  icon: AppAssets.home,
                  index: 0,
                ),
                BottomBarItem(
                  title: 'Report',
                  mainMenuCtr: mainMenuCtr,
                  onTap: () {
                    mainMenuCtr.setIndex(1);
                  },
                  icon: AppAssets.report,
                  index: 1,
                ),
                SizedBox(
                  width: 40.w,
                ),
                BottomBarItem(
                  title: 'Record',
                  mainMenuCtr: mainMenuCtr,
                  onTap: () {
                    mainMenuCtr.setIndex(3);
                  },
                  icon: AppAssets.record,
                  index: 3,
                ),
                BottomBarItem(
                  title: 'Profile',
                  mainMenuCtr: mainMenuCtr,
                  onTap: () {
                    mainMenuCtr.setIndex(4);
                  },
                  icon: AppAssets.profile,
                  index: 4,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
