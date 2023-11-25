import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class LabsSearchBars extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String) onChanged;
  final Function(String) onFieldSubmitted;
  final Function() sort;
  final Function() microphone;

  const LabsSearchBars(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.onChanged,
      required this.onFieldSubmitted,
      required this.sort,
      required this.microphone});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68.h,
      width: 1.sw,
      color: MyColors.blueaccent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Container(
                height: 40.h,
                width: 1.sw,
                decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.circular(6.r)),
                child: TextFormField(
                  onChanged: onChanged,
                  onFieldSubmitted: onFieldSubmitted,
                  controller: controller,
                  decoration: InputDecoration(
                      hintText: hintText,
                      hintStyle: getRegularStyle(
                        color: MyColors.searchTextColor,
                        fontSize: MyFonts.size14,
                      ),
                      contentPadding: EdgeInsets.only(top: 5.h),
                      border: InputBorder.none,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(AppAssets.search_normal),
                      ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}