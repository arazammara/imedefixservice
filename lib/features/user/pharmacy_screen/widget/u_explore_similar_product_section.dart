import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_explore_similar_product_card.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UExploreSimilarProductSection extends StatefulWidget {
  const UExploreSimilarProductSection({
    super.key,
  });

  @override
  State<UExploreSimilarProductSection> createState() =>
      _UExploreSimilarProductSectionState();
}

class _UExploreSimilarProductSectionState
    extends State<UExploreSimilarProductSection> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: SizedBox(
        height: 320.h,
        width: 1.sw,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  similarproducts,
                  style: getBoldStyle(
                      color: MyColors.black, fontSize: MyFonts.size16),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        viewall,
                        style: getSemiBoldStyle(
                            color: MyColors.searchTextColor,
                            fontSize: MyFonts.size14),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Image.asset(
                        AppAssets.arrowcircleright,
                        height: 16.h,
                        width: 16.w,
                      )
                    ],
                  ),
                ),
              ],
            ),
            padding20,
            SizedBox(
              height: 271.h,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: UExploreSimilarProductCard(
                        itemImage: AppAssets.item,
                        itemTitle:
                            'muscleblaze super gainer xxl, 11 ib chocolate',
                        itemPrice: '100',
                        itemOldPrice: '200',
                        itemDiscount: 'Flashsale',
                        itemRating: 4.5,
                        onTap: () {},
                        addtoCart: () {},
                        favioute: () {
                          setState(() {
                            isFav = !isFav;
                          });
                        },
                        isFav: isFav,
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
