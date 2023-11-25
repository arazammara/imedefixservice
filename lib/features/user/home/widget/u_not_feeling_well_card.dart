import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UNotFeelingWellCard extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onTap;

  const UNotFeelingWellCard(
      {super.key,
      required this.image,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12.r),
      child: Container(
        height: 43.h,
        width: 104.w,
        decoration: BoxDecoration(
          border: Border.all(color: MyColors.loginScreenTextColor),
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 21.h,
              width: 18,
            ),
            padding5,
            SizedBox(
              width: 70.w,
              child: Text(
                title,
                style: getBoldStyle(
                    color: MyColors.textColor, fontSize: MyFonts.size11),
              ),
            )
          ],
        ),
      ),
    );
  }
}
