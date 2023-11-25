import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

import '../../../../commons/common_imports/common_libs.dart';

class UUploadPresentationCard extends StatelessWidget {
  final Function() onTap;
  final String text;
  const UUploadPresentationCard(
      {super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 99.h,
        width: 1.sw,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            border: Border.all(color: MyColors.containerColor)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 96.h,
              width: 1.sw,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: MyColors.containerColor)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(AppAssets.fram, height: 24.h, width: 24.w),
                  padding20,
                  Container(
                    height: 36.h,
                    width: 1.sw,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8.r),
                            bottomRight: Radius.circular(8.r)),
                        color: MyColors.blueaccent),
                    child: Center(
                      child: Text(
                        text,
                        style: getMediumStyle(
                            color: MyColors.white, fontSize: MyFonts.size12),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
