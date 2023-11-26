// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitle;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  const CommonAppBar({
    Key? key,
    required this.appBarTitle,
    this.onPressed,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:
          backgroundColor ?? const Color(0xff38B698).withOpacity(0.1),
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
