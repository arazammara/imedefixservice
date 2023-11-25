import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UCancelReasonCard extends StatelessWidget {
  final String text;
  final int index;
 final int selectIndex ;
  final Function() onTap;
  const UCancelReasonCard({
    super.key,
    required this.text,
    required this.index,
    required this.selectIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            height: 18.h,
            width: 18.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.r),
              border: Border.all(
                  color: selectIndex == index
                      ? MyColors.appColor
                      : MyColors.searchTextColor),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: CircleAvatar(
                  backgroundColor: selectIndex == index
                      ? MyColors.appColor
                      : Colors.transparent),
            ),
          ),
        ),
        SizedBox(
          width: 6.w,
        ),
        Text(
          text,
          style:
              getMediumStyle(color: MyColors.black, fontSize: MyFonts.size16),
        )
      ],
    );
  }
}