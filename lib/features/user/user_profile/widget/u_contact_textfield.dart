import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UContactTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hint;

  const UContactTextField(
      {super.key, required this.controller, required this.hint});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.h,
      width: 1.sw,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          border: Border.all(color: MyColors.lightContainerColor, width: 0.6)),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Image.asset(
                AppAssets.callcalling,
                height: 18.h,
                width: 18.w,
              ),
            ),
            suffixIcon: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Image.asset(
                AppAssets.simcard,
                height: 18.h,
                width: 18.w,
              ),
            ),
            hintText: hint,
            hintStyle:
                getMediumStyle(color: MyColors.black, fontSize: MyFonts.size14),
            contentPadding: const EdgeInsets.only(top: 9)),
      ),
    );
  }
}
