import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UHelpSupportCard extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const UHelpSupportCard(
      {super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 40.h,
          width: 1.sw,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: MyColors.themebBluishGreyColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: getMediumStyle(
                      color: MyColors.white, fontSize: MyFonts.size12),
                ),
                RotatedBox(
                  quarterTurns: 3,
                  child: Image.asset(
                    AppAssets.arrowleft,
                    height: 10.h,
                    width: 10.w,
                    color: MyColors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
