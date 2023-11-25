import 'package:dropdown_model_list/drop_down/model.dart';
import 'package:dropdown_model_list/drop_down/select_drop_list.dart';
import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UExploreDetailsInformationCard extends StatefulWidget {
  const UExploreDetailsInformationCard({super.key});

  @override
  State<UExploreDetailsInformationCard> createState() =>
      _UExploreDetailsInformationCardState();
}

class _UExploreDetailsInformationCardState
    extends State<UExploreDetailsInformationCard> {
  DropListModel informationModel = DropListModel([
    OptionItem(id: "1", title: "Information"),
    OptionItem(id: "2", title: "Information"),
    OptionItem(id: "3", title: "Information"),
    OptionItem(id: "4", title: "Information"),
  ]);
  late OptionItem informationSelected = OptionItem(title: 'Information');
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(details,
            style: getMediumStyle(
                color: MyColors.searchTextColor, fontSize: MyFonts.size14)),
        padding10,
        SelectDropList(
          height: 46.h,
          textSizeTitle: MyFonts.size13,
          hintColorTitle: MyColors.black,
          containerDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: MyColors.lightContainerColor),
              color: Colors.transparent),
          containerPadding: const EdgeInsets.only(left: 5, right: 5),
          containerMargin: EdgeInsets.zero,
          itemSelected: informationSelected,
          dropListModel: informationModel,
          showIcon: false, // Show Icon in DropDown Title
          showArrowIcon: true, // Show Arrow Icon in DropDown
          showBorder: true,
          suffixIcon: Icons.keyboard_arrow_down_rounded,
          paddingTop: 0,
          arrowIconSize: 16.h,
          paddingBottom: 0,
          paddingLeft: 0,
          paddingRight: 0,
          onOptionSelected: (optionItem) {
            informationSelected = optionItem;
            print(optionItem.title);
            setState(() {});
          },
        ),
      ],
    );
  }
}
