import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UExploreDetailsShipping extends StatelessWidget {
  final String deliverybydate;
  const UExploreDetailsShipping({super.key, required this.deliverybydate});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              AppAssets.vane,
              height: 14.h,
              width: 14.h,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(deliveryby,
                style: getMediumStyle(
                    color: MyColors.searchTextColor, fontSize: MyFonts.size12)),
            SizedBox(
              width: 5.w,
            ),
            Text(deliverybydate,
                style: getSemiBoldStyle(
                    color: MyColors.black, fontSize: MyFonts.size12)),
          ],
        ),
        padding10,
        Row(
          children: [
            Image.asset(
              AppAssets.house,
              height: 14.h,
              width: 14.h,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(cashondeliveryavailable,
                style: getMediumStyle(
                    color: MyColors.searchTextColor, fontSize: MyFonts.size12)),
          ],
        ),
        padding10,
        Row(
          children: [
            Image.asset(
              AppAssets.arrowswaphorizontal,
              height: 14.h,
              width: 14.h,
            ),
            SizedBox(
              width: 10.w,
            ),
            Text(thisproductisnonreturnable,
                style: getMediumStyle(
                    color: MyColors.searchTextColor, fontSize: MyFonts.size12)),
          ],
        ),
      ],
    );
  }
}
