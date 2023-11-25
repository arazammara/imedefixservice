import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UExploreDetailSelectAmountCard extends StatelessWidget {
  final VoidCallback minus;
  final VoidCallback add;
  final int index;
  const UExploreDetailSelectAmountCard(
      {super.key, required this.minus, required this.add, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          selectAmount,
          style:
              getMediumStyle(color: MyColors.black, fontSize: MyFonts.size12),
        ),
        padding10,
        Container(
          height: 46.h,
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: MyColors.lightContainerColor),
              borderRadius: BorderRadius.circular(8.r)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      quantity,
                      style: getRegularStyle(
                          color: MyColors.black, fontSize: MyFonts.size14),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text(
                      '$index Panadols',
                      style: getSemiBoldStyle(
                          color: MyColors.black, fontSize: MyFonts.size14),
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: add,
                      child: Image.asset(
                        AppAssets.addsquare,
                        height: 18.h,
                        width: 18.h,
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      height: 20.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.5.r),
                        color: MyColors.lightContainerColor,
                      ),
                      child: Center(
                        child: Text(index.toString(),
                            style: getMediumStyle(
                                color: MyColors.black,
                                fontSize: MyFonts.size12)),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    InkWell(
                      onTap: minus,
                      child: Image.asset(
                        AppAssets.minussquare,
                        height: 18.h,
                        width: 18.h,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
