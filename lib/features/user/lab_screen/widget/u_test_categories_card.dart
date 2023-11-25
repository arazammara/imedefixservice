import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UTestCategoriesCard extends StatelessWidget {
  final Color color;
  final Color colorIcon;
  final Color colortxet;
  final String text;
  final String icon;
  final Function() onTap;
  final int selected;
  final int index;

  const UTestCategoriesCard({
    super.key,
    required this.color,
    required this.text,
    required this.icon,
    required this.onTap,
    required this.colorIcon,
    required this.selected,
    required this.index,
    required this.colortxet,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 71.h,
        width: 73.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: color,
          border: Border.all(
              color: index == selected
                  ? Colors.transparent
                  : MyColors.lightContainerColor),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              icon,
              height: 24.h,
              width: 26.w,
              color: colorIcon,
            ),
            padding5,
            Text(
              text,
              style: getSemiBoldStyle(
                color: colortxet,
                fontSize: MyFonts.size12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
