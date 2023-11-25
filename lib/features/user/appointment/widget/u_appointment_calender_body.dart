import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/features/user/appointment/widget/u_appointment_calender_month_data.dart';
import 'package:idaawee/features/user/appointment/widget/u_appointment_calender_raw_item.dart';
import 'package:idaawee/features/user/appointment/widget/u_appointment_calender_section.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UAppointmentCalenderBody extends StatelessWidget {
  const UAppointmentCalenderBody({
    super.key,
    required this.selectedMonth,
    required this.selectedDate,
    required this.selectDate,
  });

  final DateTime selectedMonth;
  final DateTime? selectedDate;

  final ValueChanged<DateTime> selectDate;

  @override
  Widget build(BuildContext context) {
    var data = UAppointmentCalendarMonthData(
      year: selectedMonth.year,
      month: selectedMonth.month,
    );

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Mo',
                style: getRegularStyle(
                    color: MyColors.black, fontSize: MyFonts.size15),
              ),
              Text(
                'Tu',
                style: getRegularStyle(
                    color: MyColors.black, fontSize: MyFonts.size15),
              ),
              Text(
                'We',
                style: getRegularStyle(
                    color: MyColors.black, fontSize: MyFonts.size15),
              ),
              Text(
                'Th',
                style: getRegularStyle(
                    color: MyColors.black, fontSize: MyFonts.size15),
              ),
              Text(
                'Fr',
                style: getRegularStyle(
                    color: MyColors.black, fontSize: MyFonts.size15),
              ),
              Text(
                'Sa',
                style: getRegularStyle(
                    color: MyColors.black, fontSize: MyFonts.size15),
              ),
              Text(
                'Su',
                style: getRegularStyle(
                    color: MyColors.black, fontSize: MyFonts.size15),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: 1,
          color: MyColors.lightContainerColor,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var week in data.weeks)
                Row(
                  children: week.map((d) {
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: UAppointmentCalenderRowItem(
                          hasRightBorder: false,
                          date: d.date,
                          isActiveMonth: d.isActiveMonth,
                          onTap: () => selectDate(d.date),
                          isSelected: selectedDate != null &&
                              selectedDate!.isSameDate(d.date),
                        ),
                      ),
                    );
                  }).toList(),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
