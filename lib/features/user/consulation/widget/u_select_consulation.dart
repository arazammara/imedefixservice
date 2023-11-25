import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/u_select_type_radio.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class USelectConsulation extends StatefulWidget {
  const USelectConsulation({super.key});

  @override
  State<USelectConsulation> createState() => _USelectConsulationState();
}

class _USelectConsulationState extends State<USelectConsulation> {
  int selectIndex = 0;
  List<String> categories = [
    self,
    familymember,
    other,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(selectConsultationfor,
              style: getMediumStyle(
                  color: MyColors.black94, fontSize: MyFonts.size16)),
          padding12,
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
      ),
    );
  }
}
