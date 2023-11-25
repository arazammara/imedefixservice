import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UPreferLanguageSection extends StatefulWidget {
  const UPreferLanguageSection({
    super.key,
  });

  @override
  State<UPreferLanguageSection> createState() => _UPreferLanguageSectionState();
}

class _UPreferLanguageSectionState extends State<UPreferLanguageSection> {
  int _selectedItemIndex = 0;
  bool check = false;
  List<String> item = [
    english,
    urdu,
    punjabi,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            selectPreferredLanguage,
            style:
                getMediumStyle(color: MyColors.black, fontSize: MyFonts.size16),
          ),
          padding16,
          SizedBox(
              width: 1.sw,
              height: 45.h,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: item.length,
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
                              ? MyColors.blueaccent
                              : MyColors.lightContainerColor.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Center(
                          child: Text(
                        item[index],
                        style: getRegularStyle(
                            color: _selectedItemIndex == index
                                ? MyColors.white
                                : MyColors.black,
                            fontSize: MyFonts.size14),
                      )),
                    ),
                  );
                },
              )),
        ],
      ),
    );
  }
}
