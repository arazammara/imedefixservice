import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/user/lab_screen/widget/u_test_categories_card.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UTestCategoriesSection extends StatefulWidget {
  const UTestCategoriesSection({super.key});

  @override
  State<UTestCategoriesSection> createState() => _UTestCategoriesSectionState();
}

class _UTestCategoriesSectionState extends State<UTestCategoriesSection> {
  int selected = 0;
  List<String> title = [
    villius,
    chronic,
    radiology,
    screening,
  ];
  List<String> icons = [
    AppAssets.virus,
    AppAssets.chronic,
    AppAssets.radiology,
    AppAssets.screening,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(testCategories,
              style: getMediumStyle(
                  color: MyColors.black, fontSize: MyFonts.size18)),
          padding15,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Align(
              alignment: Alignment.topLeft,
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.start,
                alignment: WrapAlignment.start,
                children: List.generate(title.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: UTestCategoriesCard(
                      colortxet:
                          selected == index ? MyColors.white : MyColors.black,
                      colorIcon: selected == index
                          ? MyColors.white
                          : MyColors.appColor,
                      index: index,
                      selected: selected,
                      color: selected == index
                          ? MyColors.appColor
                          : Colors.transparent,
                      text: title[index],
                      icon: icons[index],
                      onTap: () {
                        setState(() {
                          selected = index;
                        });
                      },
                    ),
                  );
                }),
              ),
            ),
          )
        ],
      ),
    );
  }
}
