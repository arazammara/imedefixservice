import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UExpandTileWidgets extends StatefulWidget {
  const UExpandTileWidgets({
    super.key,
    required this.title,
    required this.desc,
    this.initiallyExpanded,
  });
  final String title;
  final String desc;
  final bool? initiallyExpanded;

  @override
  State<UExpandTileWidgets> createState() => _UExpandTileWidgetsState();
}

class _UExpandTileWidgetsState extends State<UExpandTileWidgets> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0.h, vertical: 8.h),
      child: Container(
        decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: MyColors.callbgColor, width: 1.h),
          boxShadow: [
            BoxShadow(
              offset: Offset(1.w, 1.h),
              blurRadius: 2.r,
              color: Colors.black.withOpacity(0.2),
            )
          ],
        ),
        child: ListTileTheme(
          contentPadding: EdgeInsets.zero,
          dense: true,
          horizontalTitleGap: 0,
          minLeadingWidth: 0,
          minVerticalPadding: 0,
          child: ExpansionTile(
            onExpansionChanged: (val) {
              setState(() {
                isExpanded = val;
              });
            },
            collapsedBackgroundColor: Colors.white,
            initiallyExpanded: widget.initiallyExpanded ?? isExpanded,
            maintainState: true,
            backgroundColor: MyColors.callbgColor,
            tilePadding: EdgeInsets.symmetric(horizontal: 8.h),
            iconColor: isExpanded ? Colors.white : MyColors.callbgColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ),
            collapsedIconColor: MyColors.callbgColor,
            childrenPadding: const EdgeInsets.all(0),
            title: Text(
              widget.title,
              style: getMediumStyle(
                  fontSize: MyFonts.size12,
                  color: isExpanded ? Colors.white : MyColors.callbgColor),
            ),
            trailing: Icon(
              isExpanded ? Icons.close : Icons.add,
              size: 14.h,
              color: isExpanded ? Colors.white : MyColors.callbgColor,
            ),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                child: ListTile(
                  title: Text(
                    widget.desc,
                    style: getRegularStyle(
                        color: MyColors.white, fontSize: MyFonts.size10),
                  ),
                ),
              ),
              padding10,
            ],
          ),
        ),
      ),
    );
  }
}
