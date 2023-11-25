import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_pharmacy_popular_product_card.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';

class UPharmacySearchResult extends StatefulWidget {
  const UPharmacySearchResult({
    super.key,
  });

  @override
  State<UPharmacySearchResult> createState() => _UPharmacySearchResultState();
}

class _UPharmacySearchResultState extends State<UPharmacySearchResult> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
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
