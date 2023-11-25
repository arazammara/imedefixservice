import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UHomeOfferCard extends StatelessWidget {
  final String image;
  final String title;
  final VoidCallback onTap;
  const UHomeOfferCard(
      {super.key,
      required this.image,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      overlayColor: MaterialStateProperty.all(Colors.transparent),
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        height: 122.h,
        width: 103.w,
        decoration: BoxDecoration(
          color: MyColors.offerbgColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            padding10,
            Image.asset(
              image,
              height: 87.h,
              width: 103.w,
            ),
            padding6,
            Text(
              title,
              style: getBoldStyle(
                  color: MyColors.text2Color, fontSize: MyFonts.size14),
            )
          ],
        ),
      ),
    );
  }
}
