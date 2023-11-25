import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UAppointmentAvailableTimeCard extends StatefulWidget {
  final List<String> item;
  final String title;
  const UAppointmentAvailableTimeCard(
      {super.key, required this.item, required this.title});

  @override
  State<UAppointmentAvailableTimeCard> createState() =>
      _UAppointmentAvailableTimeCardState();
}

class _UAppointmentAvailableTimeCardState
    extends State<UAppointmentAvailableTimeCard> {
  int _selectedItemIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: Text(
            widget.title,
            style:
                getMediumStyle(color: MyColors.black, fontSize: MyFonts.size16),
          ),
        ),
        padding24,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: SizedBox(
            height: 60.h,
            width: 1.sw,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: widget.item.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.w),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _selectedItemIndex = index;
                        });
                      },
                      child: Container(
                          margin: EdgeInsets.only(right: 10.w),
                          width: 60.h,
                          height: 60.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: _selectedItemIndex == index
                                  ? MyColors.blueaccent
                                  : MyColors.appColor.withOpacity(0.1)),
                          child: Center(
                              child: SizedBox(
                            width: 40.w,
                            child: Text(widget.item[index],
                                textAlign: TextAlign.center,
                                style: getRegularStyle(
                                    color: _selectedItemIndex == index
                                        ? MyColors.white
                                        : MyColors.black,
                                    fontSize: MyFonts.size13)),
                          ))),
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
