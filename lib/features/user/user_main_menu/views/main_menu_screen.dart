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
          onPressed: () {
            mainMenuCtr.setIndex(2);
          },
          elevation: 0,
          backgroundColor: MyColors.themebBluishGreyColor,
          child: Image.asset(AppAssets.search,
              width: 25.w, height: 25.h, color: MyColors.white),
        ),
        bottomNavigationBar: Theme(
          data:
              Theme.of(context).copyWith(canvasColor: MyColors.bottomBarColor),
          child: BottomAppBar(
            color: MyColors.bottomBarColor,
            shape: const CircularNotchedRectangle(),
            notchMargin: 8.h,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 8.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BottomBarItem(
                    mainMenuCtr: mainMenuCtr,
                    onTap: () {
                      mainMenuCtr.setIndex(0);
                    },
                    icon: AppAssets.home,
                    index: 0,
                  ),
                  BottomBarItem(
                    mainMenuCtr: mainMenuCtr,
                    onTap: () {
                      mainMenuCtr.setIndex(1);
                    },
                    icon: AppAssets.pharmacyIcon,
                    index: 1,
                  ),
                  SizedBox(
                    width: 70.w,
                  ),
                  BottomBarItem(
                    mainMenuCtr: mainMenuCtr,
                    onTap: () {
                      mainMenuCtr.setIndex(3);
                    },
                    icon: AppAssets.filter,
                    index: 3,
                  ),
                  BottomBarItem(
                    mainMenuCtr: mainMenuCtr,
                    onTap: () {
                      mainMenuCtr.setIndex(4);
                    },
                    icon: AppAssets.user,
                    index: 4,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
