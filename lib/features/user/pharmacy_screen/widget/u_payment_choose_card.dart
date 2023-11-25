import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UPaymentChooseCard extends StatelessWidget {
  final String title;
  final Function() ontap;
  final int index;
  final int selectIndex;

  const UPaymentChooseCard(
      {super.key,
      required this.title,
      required this.ontap,
      required this.index,
      required this.selectIndex});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 46.h,
        width: 1.sw,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: MyColors.borderColor),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                  style: getMediumStyle(
                      color: MyColors.black, fontSize: MyFonts.size14)),
              Container(
                height: 20.h,
                width: 20.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.r),
                  border: Border.all(
                      color: selectIndex == index
                          ? MyColors.blueaccent
                          : MyColors.borderColor,
                      width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: CircleAvatar(
                    backgroundColor: selectIndex == index
                        ? MyColors.blueaccent
                        : Colors.transparent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
