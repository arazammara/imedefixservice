import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/u_select_type_radio.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class USelectDoingTestSection extends StatefulWidget {
  const USelectDoingTestSection({super.key});

  @override
  State<USelectDoingTestSection> createState() =>
      _USelectDoingTestSectionState();
}

class _USelectDoingTestSectionState extends State<USelectDoingTestSection> {
  int selectIndex = 0;
  List<String> categories = [
    yes,
    no,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          areyoudoingtestforyou,
          style: getSemiBoldStyle(
              color: MyColors.loginScreenTextColor, fontSize: MyFonts.size14),
        ),
        SizedBox(height: 15.h),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Align(
            alignment: Alignment.topLeft,
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.start,
              alignment: WrapAlignment.start,
              children: List.generate(categories.length, (index) {
                return USelectTypeRadio(
                    category: categories[index],
                    index: index,
                    selectIndex: selectIndex,
                    onTap: () {
                      setState(() {
                        selectIndex = index;
                      });
                    });
              }),
            ),
          ),
        )
      ],
    );
  }
}
