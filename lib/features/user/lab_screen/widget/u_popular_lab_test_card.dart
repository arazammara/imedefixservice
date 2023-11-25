import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UPopularLabTestCard extends StatelessWidget {
  final String price;
  final String detail;
  final String testTypes;
  final String name;
  final String date;
  final String image;
  final Function() favorite;
  const UPopularLabTestCard(
      {super.key,
      required this.price,
      required this.detail,
      required this.testTypes,
      required this.name,
      required this.date,
      required this.favorite,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.r),
            child: Image.asset(
              image,
              height: 105.h,
              width: 105.w,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 166.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(price,
                        style: getBoldStyle(
                            color: MyColors.black, fontSize: MyFonts.size16)),
                    InkWell(
                      onTap: favorite,
                      child: Icon(Icons.favorite_border_outlined,
                          color: MyColors.lightContainerColor, size: 18.h),
                    ),
                  ],
                ),
              ),
              padding5,
              SizedBox(
                width: 166.w,
                child: Text(detail,
                    style: getMediumStyle(
                        color: MyColors.black, fontSize: MyFonts.size12)),
              ),
              padding5,
              Row(
                children: [
                  Text('$testtypess: ',
                      style: getMediumStyle(
                          color: MyColors.loginScreenTextColor,
                          fontSize: MyFonts.size12)),
                  Text(testTypes,
                      style: getMediumStyle(
                          color: MyColors.black, fontSize: MyFonts.size12)),
                ],
              ),
              padding18,
              SizedBox(
                width: 166.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(name,
                        style: getMediumStyle(
                            color: MyColors.black, fontSize: MyFonts.size12)),
                    Text(date,
                        style: getMediumStyle(
                            color: MyColors.loginScreenTextColor,
                            fontSize: MyFonts.size12)),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
