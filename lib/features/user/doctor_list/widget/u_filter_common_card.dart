import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UFilterCommonCard extends StatelessWidget {
  final bool? star;
  final bool? review;
  final int index;
  final int selectedIndex;
  final String text;

  final Function()? onTap;

  const UFilterCommonCard(
      {super.key,
      required this.text,
      this.onTap,
      this.review,
      this.star,
      required this.index,
      required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: star == true
            ? text.length + 100
            : review == true
                ? text.length * 50.0
                : text.length + 95.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(81.r),
          border: Border.all(
              color: selectedIndex == index
                  ? Colors.transparent
                  : MyColors.filterborderColor),
          color:
              selectedIndex == index ? MyColors.blueaccent : Colors.transparent,
        ),
        child: Padding(
          padding: star == true
              ? const EdgeInsets.only(left: 0, right: 0, bottom: 9, top: 5)
              : review == true
                  ? const EdgeInsets.only(
                      left: 28, right: 28, bottom: 9, top: 5)
                  : const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
          child: review == true
              ? Center(
                  child: RichText(
                  text: TextSpan(
                      text: '$star1 ',
                      style: getMediumStyle(
                          color: selectedIndex == index
                              ? MyColors.white
                              : MyColors.appColor,
                          fontSize: MyFonts.size20),
                      children: [
                        TextSpan(
                          text: text,
                          style: getMediumStyle(
                              color: selectedIndex == index
                                  ? MyColors.white
                                  : MyColors.black,
                              fontSize: MyFonts.size16),
                        )
                      ]),
                ))
              //   child: Text(
              //   text,

              // ))
              : star == true
                  ? Center(
                      child: Text(
                      text,
                      style: getMediumStyle(
                          color: selectedIndex == index
                              ? MyColors.white
                              : MyColors.appColor,
                          fontSize:
                              star == true ? MyFonts.size20 : MyFonts.size16),
                    ))
                  : Center(
                      child: Text(
                      text,
                      style: getMediumStyle(
                          color: selectedIndex == index
                              ? MyColors.white
                              : MyColors.black,
                          fontSize:
                              star == true ? MyFonts.size20 : MyFonts.size16),
                    )),
        ),
      ),
    );
  }
}
