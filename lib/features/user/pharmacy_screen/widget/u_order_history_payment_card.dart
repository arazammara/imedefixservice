import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UOrderHistoryPaymentCard extends StatelessWidget {
  const UOrderHistoryPaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            paymentby,
            style:
                getMediumStyle(color: MyColors.black, fontSize: MyFonts.size14),
          ),
          padding10,
          InkWell(
            onTap: () {},
            child: Container(
              height: 46.h,
              width: 1.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6.r),
                border: Border.all(color: MyColors.lightContainerColor),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: cashondelivery,
                          style: getRegularStyle(
                              color: MyColors.searchTextColor,
                              fontSize: MyFonts.size14),
                          children: [
                            TextSpan(
                                text: ' \$566',
                                style: getMediumStyle(
                                    color: MyColors.black,
                                    fontSize: MyFonts.size14))
                          ]),
                    ),
                    Image.asset(
                      AppAssets.arrowleft,
                      height: 16.h,
                      width: 16.w,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
