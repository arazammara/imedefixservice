import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_pharmacy_popular_product_card.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UPharmacyPopularProductSection extends StatefulWidget {
  const UPharmacyPopularProductSection({
    super.key,
  });

  @override
  State<UPharmacyPopularProductSection> createState() =>
      _UPharmacyPopularProductSectionState();
}

class _UPharmacyPopularProductSectionState
    extends State<UPharmacyPopularProductSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(popularProducts,
                  style: getMediumStyle(
                      color: MyColors.black, fontSize: MyFonts.size18)),
              InkWell(
                onTap: () {},
                child: Text(
                  seeAll,
                  style: getRegularStyle(
                      color: MyColors.textLightColor, fontSize: MyFonts.size14),
                ),
              ),
            ],
          ),
          padding20,
          GridView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 10,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 271.h,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10),
              itemBuilder: (context, index) => UPharmacyPopularProductCard(
                    itemImage: AppAssets.item,
                    itemTitle: 'muscleblaze super gainer xxl, 11 ib chocolate',
                    itemPrice: '100',
                    itemOldPrice: '200',
                    itemDiscount: 'Flashsale',
                    itemRating: 4.5,
                    onTap: () {
                      Navigator.pushNamed(
                          context, AppRoutes.explorePharmacyProduct);
                    },
                  )),
        ],
      ),
    );
  }
}
