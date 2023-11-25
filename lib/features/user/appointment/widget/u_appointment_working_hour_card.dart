import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UAppointWorkingHourCard extends StatelessWidget {
  final bool value;
  final Function(bool?) onChanged;
  final String text;
  const UAppointWorkingHourCard(
      {super.key,
      required this.value,
      required this.onChanged,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47.h,
      width: 140.w,
      decoration: BoxDecoration(
        border: Border.all(color: MyColors.lightContainerColor),
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Row(
        children: [
          Checkbox(
              checkColor: MyColors.white,
              activeColor: MyColors.appColor,
              value: value,
              onChanged: onChanged),
          Text(
            text,
            style: getSemiBoldStyle(
                color: MyColors.checkboxColor, fontSize: MyFonts.size14),
          )
        ],
      ),
    );
  }
}