import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitle;
  final VoidCallback? onPressed;
  const CommonAppBar({
    super.key,
    required this.appBarTitle,
    this.onPressed,
  });

  @override
  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      leading: IconButton(
        onPressed: onPressed ?? () => Navigator.pop(context),
        icon: Icon(
          Icons.arrow_back_ios,
          size: 20.h,
          color: MyColors.black94,
        ),
      ),
      centerTitle: true,
      title: Text(
        appBarTitle,
        style:
            getSemiBoldStyle(color: MyColors.black94, fontSize: MyFonts.size18),
      ),
    );
  }
}
