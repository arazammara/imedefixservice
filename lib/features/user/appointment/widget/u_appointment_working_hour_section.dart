import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/user/appointment/widget/u_appointment_working_hour_card.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UAppointmentWorkingHourSection extends StatefulWidget {
  const UAppointmentWorkingHourSection({super.key});

  @override
  State<UAppointmentWorkingHourSection> createState() =>
      _UAppointmentWorkingHourSectionState();
}

class _UAppointmentWorkingHourSectionState
    extends State<UAppointmentWorkingHourSection> {
  List<String> item = [
    ten,
    eleven,
    twelve,
    one,
    two,
    three,
    four,
    five,
    six,
    seven,
    eight,
    nine
  ];
  int _selectedItemIndex = 0;
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            workingHours,
            style: getMediumStyle(
                color: MyColors.black94, fontSize: MyFonts.size16),
          ),
          padding16,
          SizedBox(
              width: 1.sw,
              height: 138.h,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: item.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 10.w,
                    mainAxisSpacing: 10.h,
                    mainAxisExtent: 38.h),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedItemIndex = index;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: _selectedItemIndex == index
                              ? MyColors.blueaccent
                              : MyColors.lightContainerColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Center(
                          child: Text(
                        item[index],
                        style: getRegularStyle(
                            color: _selectedItemIndex == index
                                ? MyColors.white
                                : MyColors.black,
                            fontSize: MyFonts.size14),
                      )),
                    ),
                  );
                },
              )),
          padding20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              UAppointWorkingHourCard(
                text: available,
                value: check,
                onChanged: (value) {
                  setState(() {
                    check = value!;
                  });
                },
              ),
              UAppointWorkingHourCard(
                text: booked,
                value: check,
                onChanged: (value) {
                  setState(() {
                    check = value!;
                  });
                },
              ),
            ],
          ),
          padding10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              UAppointWorkingHourCard(
                text: busy,
                value: check,
                onChanged: (value) {
                  setState(() {
                    check = value!;
                  });
                },
              ),
              SizedBox(
                width: 140.w,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
