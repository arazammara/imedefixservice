import 'package:dotted_line/dotted_line.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UCancelOrderStatus extends StatelessWidget {
  const UCancelOrderStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: SizedBox(
        height: 256.h,
        width: 1.sw,
        child: Row(children: [
          Column(
            children: [
              Container(
                height: 24.h,
                width: 24.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.r),
                    border: Border.all(color: MyColors.blueaccent)),
                child: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: CircleAvatar(
                    backgroundColor: MyColors.blueaccent,
                  ),
                ),
              ),
              DottedLine(
                direction: Axis.vertical,
                lineLength: 52.h,
                dashColor: MyColors.searchTextColor.withOpacity(0.2),
                lineThickness: 1.2,
              ),
              Container(
                height: 24.h,
                width: 24.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.r),
                    border: Border.all(
                        color: MyColors.searchTextColor.withOpacity(0.2))),
                child: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: CircleAvatar(backgroundColor: Colors.transparent),
                ),
              ),
              DottedLine(
                direction: Axis.vertical,
                lineLength: 52.h,
                dashColor: MyColors.searchTextColor.withOpacity(0.2),
                lineThickness: 1.2,
              ),
              Container(
                height: 24.h,
                width: 24.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.r),
                    border: Border.all(
                        color: MyColors.searchTextColor.withOpacity(0.2))),
                child: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: CircleAvatar(backgroundColor: Colors.transparent),
                ),
              ),
              DottedLine(
                direction: Axis.vertical,
                lineLength: 52.h,
                dashColor: MyColors.searchTextColor.withOpacity(0.2),
                lineThickness: 1.2,
              ),
              Container(
                height: 24.h,
                width: 24.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.r),
                    border: Border.all(
                        color: MyColors.searchTextColor.withOpacity(0.2))),
                child: const Padding(
                  padding: EdgeInsets.all(3.0),
                  child: CircleAvatar(backgroundColor: Colors.transparent),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 12.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ordered,
                    style: getBoldStyle(
                        color: MyColors.black, fontSize: MyFonts.size16),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'tue, 21 feb 2023',
                    style: getMediumStyle(
                        color: MyColors.searchTextColor,
                        fontSize: MyFonts.size14),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    packaged,
                    style: getBoldStyle(
                        color: MyColors.pharmacytextColor.withOpacity(0.2),
                        fontSize: MyFonts.size16),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'we will notify you once your package is ready',
                    style: getMediumStyle(
                        color: MyColors.searchTextColor.withOpacity(0.2),
                        fontSize: MyFonts.size14),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shipped,
                    style: getBoldStyle(
                        color: MyColors.pharmacytextColor.withOpacity(0.2),
                        fontSize: MyFonts.size16),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'This process is not done yet',
                    style: getMediumStyle(
                        color: MyColors.searchTextColor.withOpacity(0.2),
                        fontSize: MyFonts.size14),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    delivered,
                    style: getBoldStyle(
                        color: MyColors.pharmacytextColor.withOpacity(0.2),
                        fontSize: MyFonts.size16),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    'Expected delivery item sat, 25 feb 2023',
                    style: getMediumStyle(
                        color: MyColors.searchTextColor.withOpacity(0.2),
                        fontSize: MyFonts.size14),
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
