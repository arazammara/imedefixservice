import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/CustomTextFields.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UAddressSelectCard extends StatefulWidget {
  final TextEditingController customTextController;
  final List<String> item;
  const UAddressSelectCard(
      {super.key, required this.item, required this.customTextController});

  @override
  State<UAddressSelectCard> createState() => _UAddressSelectCardState();
}

class _UAddressSelectCardState extends State<UAddressSelectCard> {
  int _selectedItemIndex = 0;
  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(selectonaddresstype,
            style: getMediumStyle(
                color: MyColors.black, fontSize: MyFonts.size14)),
        padding15,
        SizedBox(
            width: 1.sw,
            height: 45.h,
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.item.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  mainAxisExtent: 42.h),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    setState(() {
                      _selectedItemIndex = index;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: _selectedItemIndex == index
                            ? MyColors.blueText.withOpacity(0.1)
                            : MyColors.lightContainerColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Center(
                        child: Text(
                      widget.item[index],
                      style: getRegularStyle(
                          color: MyColors.black, fontSize: MyFonts.size14),
                    )),
                  ),
                );
              },
            )),
        _selectedItemIndex == 2
            ? CustomTextField(
                texfieldHeight: 54.h,
                controller: widget.customTextController,
                hintText: eg,
                onChanged: (value) {},
                onFieldSubmitted: (value) {},
                obscure: false,
                label: '',
                subTitle: '',
              )
            : Container(),
      ],
    );
  }
}
