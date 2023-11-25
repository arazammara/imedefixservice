import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UAddressInformation extends StatelessWidget {
  final TextEditingController controller;
  final String hint;

  const UAddressInformation(
      {super.key, required this.controller, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          addressinformation,
          style:
              getMediumStyle(color: MyColors.black, fontSize: MyFonts.size16),
        ),
        padding15,
        Container(
          height: 89.h,
          width: 1.sw,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.r),
              border:
                  Border.all(color: MyColors.lightContainerColor, width: 0.6)),
          child: TextFormField(
              maxLines: 3,
              controller: controller,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hint,
                  hintStyle: getMediumStyle(
                      color: MyColors.black, fontSize: MyFonts.size14),
                  contentPadding: EdgeInsets.only(left: 10.w, top: 10.h))),
        ),
      ],
    );
  }
}
