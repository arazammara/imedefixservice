// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:idaawee/commons/common_imports/apis_commons.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/features/user/user_main_menu/controller/main_menu_controller.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

import '../../routes/route_manager.dart';
import '../../utils/constants/assets_manager.dart';

class CommonAppBar extends ConsumerWidget implements PreferredSizeWidget {
  final String appBarTitle;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final bool? isBackButton;
  const CommonAppBar({
    Key? key,
    required this.appBarTitle,
    this.onPressed,
    this.backgroundColor,
    this.isBackButton = true,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor:
          backgroundColor ?? const Color(0xff38B698).withOpacity(0.1),
      leading: isBackButton == true
          ? IconButton(
              onPressed: onPressed ??
                  () {
                    final mainMenuCtr = ref.watch(mainMenuProvider);
                    mainMenuCtr.setIndex(0);
                  },
              icon: Icon(
                Icons.arrow_back_ios,
                size: 20.h,
                color: MyColors.black94,
              ),
            )
          : null,
      centerTitle: isBackButton == false ? false : true,
      title: isBackButton == false
          ? Row(
              children: [
                Text('Hi, $appBarTitle ',
                    style: getSemiBoldStyle(
                        color: MyColors.black94, fontSize: MyFonts.size18)),
                Image.asset(
                  AppAssets.hand,
                  height: 16.h,
                  width: 16.h,
                ),
              ],
            )
          : Text(
              appBarTitle,
              style: getSemiBoldStyle(
                  color: MyColors.black94, fontSize: MyFonts.size18),
            ),
      actions: [
        isBackButton == false
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: CircleAvatar(
                  radius: 21.h,
                  backgroundColor: MyColors.white,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushNamed(
                          context, AppRoutes.notificationScreen);
                    },
                    icon: Stack(
                      children: [
                        Image.asset(
                          AppAssets.notification,
                          width: 20.w,
                          height: 20.h,
                        ),
                        Positioned(
                            top: 0,
                            right: 0,
                            child: CircleAvatar(
                              backgroundColor: MyColors.appColor,
                              radius: 4.r,
                            ))
                      ],
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
