import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UPharmacyTapCard extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function() onTap;
  const UPharmacyTapCard({super.key, required this.text, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            color: isSelected?MyColors.themebBluishGreyColor:MyColors.containerColor),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          child: Center(
            child: Text(
              text,
              style: getSemiBoldStyle(
                  color: isSelected?MyColors.white:MyColors.black, fontSize: MyFonts.size12),
            ),
          ),
        ),
      ),
    );
  }
}
