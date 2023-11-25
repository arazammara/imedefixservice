import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/features/user/appointment/widget/u_appointment_calender_section.dart';
import 'package:idaawee/utils/constants/font_manager.dart';
import 'package:intl/intl.dart';

class UAppointmentCalenderHeader extends StatelessWidget {
  const UAppointmentCalenderHeader({super.key, 
    required this.selectedMonth,
    required this.selectedDate,
    required this.onChange,
  });

  final DateTime selectedMonth;
  final DateTime? selectedDate;

  final ValueChanged<DateTime> onChange;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.r), topRight: Radius.circular(8.r)),
        color: MyColors.appColor,
      ),
      height: 52.h,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              DateFormat('MMMM yyyy').format(selectedMonth),
              style: getMediumStyle(
                  color: MyColors.white, fontSize: MyFonts.size15),
              textAlign: TextAlign.center,
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    onChange(selectedMonth.addMonth(-1));
                  },
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: MyColors.white,
                    size: 16.h,
                  ),
                ),
                InkWell(
                  onTap: () {
                    onChange(selectedMonth.addMonth(1));
                  },
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: MyColors.white,
                    size: 16.h,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}