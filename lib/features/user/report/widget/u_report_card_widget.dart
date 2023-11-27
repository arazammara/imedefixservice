import 'package:idaawee/commons/common_imports/common_libs.dart';
import '../../../../commons/common_functions/padding.dart';
import '../../../../utils/constants/font_manager.dart';

class UReportCardWidget extends StatelessWidget {
  final String date;
  final int documents;
  final String title;
  final String img;
  final VoidCallback onTap;
  const UReportCardWidget(
      {super.key,
      required this.date,
      required this.documents,
      required this.title,
      required this.img,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 103.h,
        width: 1.sw,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.r),
          color: MyColors.white,
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 14.w),
          child: Row(
            children: [
              Container(
                height: 75.h,
                width: 81.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(color: MyColors.lightgrey),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      img,
                      height: 43.h,
                      width: 43.w,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: getBoldStyle(
                        color: MyColors.black, fontSize: MyFonts.size18),
                  ),
                  padding3,
                  Text(
                    '$documents Documents',
                    style: getSemiBoldStyle(
                        color: MyColors.appColor, fontSize: MyFonts.size14),
                  ),
                  padding3,
                  Text(
                    'Last Updates: $date',
                    style: getSemiBoldStyle(
                        color: MyColors.grey, fontSize: MyFonts.size14),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
