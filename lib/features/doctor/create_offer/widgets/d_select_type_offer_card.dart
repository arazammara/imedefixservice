import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

// ignore: must_be_immutable
class DSelectTypeOfferCard extends StatelessWidget {
  final Function() onTap;
  final int index;
  int selectIndex = 0;
  final String image;
  final String title;
  final String subTitle;

  DSelectTypeOfferCard({
    super.key,
    required this.onTap,
    required this.index,
    required this.selectIndex,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16.r),
      onTap: onTap,
      child: Container(
        height: 212.h,
        width: 134.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: MyColors.borderColor),
        ),
        child: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 20.h,
                width: 20.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                      color: selectIndex == index
                          ? MyColors.switchColor
                          : MyColors.borderColor),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 12.h,
                      width: 12.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: selectIndex == index
                            ? MyColors.switchColor
                            : Colors.transparent,
                      ),
                    ),
                  ],
                ),
              ),
              padding5,
              Center(
                child: Image.asset(
                  image,
                  height: 66.h,
                  width: 64.w,
                ),
              ),
              padding15,
              Center(
                child: Text(
                  title,
                  style: getBoldStyle(
                      color: MyColors.black, fontSize: MyFonts.size16),
                ),
              ),
              padding8,
              Center(
                child: Text(
                  subTitle,
                  textAlign: TextAlign.center,
                  style: getSemiBoldStyle(
                      color: MyColors.accountTypeTextColor,
                      fontSize: MyFonts.size14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
