import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class USpecializedDoctorCard extends StatelessWidget {
  final String image;
  final String title;
  final Function()? onTap;
  const USpecializedDoctorCard(
      {super.key, required this.image, required this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: MyColors.transparentColor,
      splashColor: MyColors.transparentColor,
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(
            image,
            height: 101.h,
            width: 102.w,
          ),
          padding5,
          Text(title,
              style: getMediumStyle(
                  color: MyColors.black, fontSize: MyFonts.size11)),
        ],
      ),
    );
  }
}
