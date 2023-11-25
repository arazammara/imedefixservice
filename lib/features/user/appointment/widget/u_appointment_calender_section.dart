import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/features/user/appointment/widget/u_appointment_calender_body.dart';
import 'package:idaawee/features/user/appointment/widget/u_appointment_calender_header.dart';

class UAppointmentCalenderSection extends StatefulWidget {
  const UAppointmentCalenderSection({super.key});

  @override
  State<UAppointmentCalenderSection> createState() =>
      _UAppointmentCalenderSectionState();
}

class _UAppointmentCalenderSectionState
    extends State<UAppointmentCalenderSection> {
  late DateTime selectedMonth;

  DateTime? selectedDate;

  @override
  void initState() {
    selectedMonth = DateTime.now().monthStart;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Container(
            height: 320.h,
            width: 1.sw,
            decoration: BoxDecoration(
                color: MyColors.white,
                borderRadius: BorderRadius.circular(8.r)),
            child: Column(
              children: [
                UAppointmentCalenderHeader(
                  selectedMonth: selectedMonth,
                  selectedDate: selectedDate,
                  onChange: (value) => setState(() => selectedMonth = value),
                ),
                padding10,
                Expanded(
                  child: UAppointmentCalenderBody(
                    selectedDate: selectedDate,
                    selectedMonth: selectedMonth,
                    selectDate: (DateTime value) => setState(() {
                      selectedDate = value;
                    }),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

extension DateTimeExt on DateTime {
  DateTime get monthStart => DateTime(year, month);
  DateTime get dayStart => DateTime(year, month, day);

  DateTime addMonth(int count) {
    return DateTime(year, month + count, day);
  }

  bool isSameDate(DateTime date) {
    return year == date.year && month == date.month && day == date.day;
  }

  bool get isToday {
    return isSameDate(DateTime.now());
  }
}

class CalendarDayData {
  final DateTime date;
  final bool isActiveMonth;
  final bool isActiveDate;

  const CalendarDayData({
    required this.date,
    required this.isActiveMonth,
    required this.isActiveDate,
  });
}
