import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class AccountTypeCard extends StatelessWidget {
  final Function() onTap;
  final int index;
  final int selectIndex;
  final String image;
  final String title;
  final String subTitle;

  const AccountTypeCard({
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
      borderRadius: BorderRadius.circular(16),
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
              SizedBox(
                height: 5.h,
              ),
              Center(
                child: Image.asset(
                  image,
                  height: 62.h,
                  width: 57.w,
                ),
              ),
              SizedBox(
                height: 14.h,
              ),
              Center(
                child: Text(
                  title,
                  style: getBoldStyle(
                      color: MyColors.black, fontSize: MyFonts.size16),
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Center(
                child: Text(
                  subTitle,
                  style: getSemiBoldStyle(
                      color: MyColors.accountTypeTextColor,
                      fontSize: MyFonts.size12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
