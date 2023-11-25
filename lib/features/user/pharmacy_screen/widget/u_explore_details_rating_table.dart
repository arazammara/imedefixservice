import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_explore_details_rating_table_card.dart';

class UExploreDetailsRatingTable extends StatelessWidget {
  const UExploreDetailsRatingTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UExploreDetailsRatingTableCard(
          barlength: 258.w,
          stars: 5,
          rating: 586,
        ),
        padding10,
        UExploreDetailsRatingTableCard(
          barlength: 175.w,
          stars: 4,
          rating: 325,
        ),
        padding10,
        UExploreDetailsRatingTableCard(
          barlength: 74.w,
          stars: 3,
          rating: 54,
        ),
        padding10,
        UExploreDetailsRatingTableCard(
          barlength: 16.w,
          stars: 2,
          rating: 11,
        ),
        padding10,
        UExploreDetailsRatingTableCard(
          barlength: 72.w,
          stars: 1,
          rating: 55,
        ),
      ],
    );
  }
}
