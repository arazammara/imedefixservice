import '../../../../commons/common_imports/common_libs.dart';
import '../../../../utils/constants/assets_manager.dart';
import '../../../../utils/constants/font_manager.dart';

class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46.h,
      width: 1.sw,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          color: MyColors.white
      ),
      padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 12.h),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                AppAssets.searchtf,
                height: 13.h,
                width: 14.w,
              ),
              SizedBox(width: 15.w,),
              Text("Search...", style: getRegularStyle(
                  color: MyColors.themebBluishGreyColor,
                  fontSize: MyFonts.size15
              ),)
            ],
          ),
          Image.asset(
            AppAssets.cancel,
            height: 13.h,
            width: 14.w,
          ),
        ],
      ),
    );
  }
}
