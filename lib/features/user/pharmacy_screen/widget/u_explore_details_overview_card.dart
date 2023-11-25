import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UExploreDetailsOverviewCard extends StatelessWidget {
  final int index;
  const UExploreDetailsOverviewCard({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(overview,
            style: getMediumStyle(
                color: MyColors.searchTextColor, fontSize: MyFonts.size14)),
        padding10,
        Container(
          height: 46.h,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: MyColors.lightContainerColor)),
          child: Padding(
              padding: const EdgeInsets.only(left: 12, top: 13),
              child: Text(
                '$index $quantity'.replaceAll(':', ''),
                style: getRegularStyle(
                    color: MyColors.black, fontSize: MyFonts.size14),
              )),
        ),
      ],
    );
  }
}
