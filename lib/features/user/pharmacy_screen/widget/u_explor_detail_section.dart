import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/expand_tile_widget.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_explore_details_consumer_review_card.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_explore_details_information_card.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_explore_details_overview_card.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_explore_details_rating_table.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_explor_detail_select_acmount_card.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_explore_details_shipping.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_explore_prduct_details.dart';

class UExplorDetailSection extends StatefulWidget {
  const UExplorDetailSection({
    super.key,
  });

  @override
  State<UExplorDetailSection> createState() => _UExplorDetailSectionState();
}

class _UExplorDetailSectionState extends State<UExplorDetailSection> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const UExploreProductDetailsCard(
            totalreview: '2',
            itemTitle: 'muscleblaze super gainer xxl, 11 ib chocolate',
            itemPrice: '100',
            itemOldPrice: '200',
            itemDiscount: 'Flashsale',
            itemRating: 4.5,
          ),
          padding20,
          UExploreDetailSelectAmountCard(
            add: () {
              index++;
              setState(() {});
            },
            index: index,
            minus: () {
              setState(() {
                index > 0 ? index-- : null;
              });
            },
          ),
          padding20,
          const UExploreDetailsShipping(
            deliverybydate: 'Fri, 24 feb. free shipping',
          ),
          padding20,
          UExploreDetailsOverviewCard(
            index: index,
          ),
          padding20,
          const UExploreDetailsInformationCard(),
          padding20,
          const ExpandTileWidget(
            desc: 'the product is near expiry date',
            title: abouttheproduct,
            subTitle: productisnearexpirydate,
            icon: Icons.keyboard_arrow_down_rounded,
          ),
          padding20,
          UExploreDetailsConsumerReviewCard(
            consumerRating: 4.5,
            informations: () {},
          ),
          padding20,
          const UExploreDetailsRatingTable(),
        ],
      ),
    );
  }
}
