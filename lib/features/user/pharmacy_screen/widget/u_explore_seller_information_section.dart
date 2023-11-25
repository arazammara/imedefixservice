import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UExploreSellerInformationSection extends StatelessWidget {
  const UExploreSellerInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 15),
          child: Text(sellerinformation,
              style: getMediumStyle(
                  color: MyColors.pharmacytextColor, fontSize: MyFonts.size14)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: InkWell(
            onTap: () {},
            child: Container(
              height: 92.h,
              width: 1.sw,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  border: Border.all(color: MyColors.containerColor)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 210.w,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          RichText(
                            text: TextSpan(
                                text: soldmarkedby,
                                style: getMediumStyle(
                                    color: MyColors.black,
                                    fontSize: MyFonts.size12),
                                children: [
                                  TextSpan(
                                      text:
                                          ' bright lifecare pvt ltd fullfilled by ',
                                      style: getRegularStyle(
                                          color: MyColors.searchTextColor,
                                          fontSize: MyFonts.size12)),
                                  TextSpan(
                                      text: 'health kart',
                                      style: getRegularStyle(
                                          color: MyColors.blueText,
                                          fontSize: MyFonts.size12)),
                                ]),
                          ),
                          SizedBox(
                            height: 2.h,
                          ),
                          Text(
                              'parasvnath arcdia, mg road, sector-14, gurugram(haryana) - 122001',
                              style: getRegularStyle(
                                  color: MyColors.searchTextColor,
                                  fontSize: MyFonts.size12))
                        ],
                      ),
                    ),
                    RotatedBox(
                      quarterTurns: 3,
                      child: Image.asset(
                        AppAssets.arrowleft,
                        height: 16.h,
                        width: 16.w,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
