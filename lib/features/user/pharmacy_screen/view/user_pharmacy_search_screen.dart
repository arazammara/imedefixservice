import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/user/pharmacy_screen/view/user_explore_product_screen.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_pharmacy_search_card.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';

class UserPharmacySearchScreen extends StatefulWidget {
  const UserPharmacySearchScreen({super.key});

  @override
  State<UserPharmacySearchScreen> createState() =>
      _UserPharmacySearchScreenState();
}

class _UserPharmacySearchScreenState extends State<UserPharmacySearchScreen> {
  bool isFav = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        appBarTitle: search,
      ),
      body: SizedBox(
        height: 812.h,
        child: ListView.builder(
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            itemCount: 10,
            itemBuilder: (context, index) => UPharmacySearchCard(
                  totalreview: '2',
                  itemMaterial: '60 softgels',
                  isFav: isFav,
                  favroite: () {
                    setState(() {
                      isFav = !isFav;
                    });
                  },
                  itemImage: AppAssets.item,
                  itemTitle: 'muscleblaze super gainer xxl, 11 ib chocolate',
                  itemPrice: '100',
                  itemOldPrice: '200',
                  itemDiscount: 'Flashsale',
                  itemRating: 4.5,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const UserExploreProductScreen()));
                  },
                )),
      ),
    );
  }
}
