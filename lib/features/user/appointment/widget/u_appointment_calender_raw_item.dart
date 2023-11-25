import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/features/user/appointment/widget/u_appointment_calender_section.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UAppointmentCalenderRowItem extends StatelessWidget {
  const UAppointmentCalenderRowItem({super.key, 
    required this.hasRightBorder,
    required this.isActiveMonth,
    required this.isSelected,
    required this.date,
    required this.onTap,
  });

  final bool hasRightBorder;
  final bool isActiveMonth;
  final VoidCallback onTap;
  final bool isSelected;

  final DateTime date;
  @override
  Widget build(BuildContext context) {
    final int number = date.day;
    final isToday = date.isToday;
    final bool isPassed = date.isBefore(DateTime.now());

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        alignment: Alignment.center,
        height: 35,
        width: 35,
        decoration: isSelected || isToday
            ? const BoxDecoration(
                color: MyColors.blueaccent, shape: BoxShape.circle)
            : isToday
                ? BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: MyColors.blueaccent,
                    ),
                  )
                : null,
        child: Text(
          number.toString(),
          style: getRegularStyle(
              color: isPassed
                  ? MyColors.grey
                  : isToday || isSelected
                      ? MyColors.white
                      : MyColors.black,
              fontSize: MyFonts.size15),
          // style: TextStyle(
        ),
      ),
    );
  }
}