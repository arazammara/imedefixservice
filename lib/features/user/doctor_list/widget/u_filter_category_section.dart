import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/user/doctor_list/widget/u_filter_common_card.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UFilterCategorySection extends StatefulWidget {
  const UFilterCategorySection({
    super.key,
  });

  @override
  State<UFilterCategorySection> createState() => _UFilterCategorySectionState();
}

class _UFilterCategorySectionState extends State<UFilterCategorySection> {
  List<String> text = [
    all,
    dentist,
    nephrologist,
    cardiologist,
    psychiatrist,
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              category,
              style: getSemiBoldStyle(
                  color: MyColors.black, fontSize: MyFonts.size20),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
              },
              child: Text(
                reset,
                style: getRegularStyle(
                    color: MyColors.black, fontSize: MyFonts.size16),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            alignment: WrapAlignment.start,
            children: List.generate(text.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(left: 5, bottom: 8),
                child: UFilterCommonCard(
                  index: index,
                  selectedIndex: selectedIndex,
                  text: text[index],
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
