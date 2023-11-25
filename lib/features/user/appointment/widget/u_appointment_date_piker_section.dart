import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UAppointmentDatePickerSection extends StatefulWidget {
  const UAppointmentDatePickerSection({super.key});

  @override
  State<UAppointmentDatePickerSection> createState() =>
      _UAppointmentDatePickerSectionState();
}

class _UAppointmentDatePickerSectionState
    extends State<UAppointmentDatePickerSection> {
  final DatePickerController _controller = DatePickerController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: DatePicker(
        DateTime.now(),
        controller: _controller,
        initialSelectedDate: DateTime.now(),
        selectionColor: MyColors.blueaccent,
        selectedTextColor: MyColors.white,
        monthTextStyle: const TextStyle(color: Colors.transparent),
        dateTextStyle:
            getRegularStyle(color: MyColors.black, fontSize: MyFonts.size12),
        dayTextStyle:
            getSemiBoldStyle(color: MyColors.black, fontSize: MyFonts.size14),
        locale: 'en',
        height: 85.h,
        deactivatedColor: MyColors.appColor,
        onDateChange: (date) {
          setState(() {});
        },
      ),
    );
  }
}
