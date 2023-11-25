
import 'package:idaawee/features/user/user_main_menu/controller/main_menu_controller.dart';
import '../../../../commons/common_imports/common_libs.dart';

class BottomBarItem extends StatelessWidget {
  const BottomBarItem({
    super.key,
    required this.mainMenuCtr,
    required this.onTap,
    required this.icon,
    required this.index,
  });

  final MainMenuController mainMenuCtr;
  final Function() onTap;
  final String icon;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 70.w,
        height: 40.h,
        color:MyColors.bottomBarColor ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon,
                width: 25.w,
                height: 25.h,
                color: mainMenuCtr.index == index
                    ? MyColors.themebBluishGreyColor: MyColors.grey),
          ],
        ),
      ),
    );
  }
}
