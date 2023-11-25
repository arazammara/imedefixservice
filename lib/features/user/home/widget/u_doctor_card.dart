import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/product_card.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UDoctorCard extends StatelessWidget {
  final String image;
  final String name;
  final Function() favorite;
  final Function() book;
  final Function()? onTap;
  final double rating;
  final String description;
  final bool isFavorite;
  final bool isBanner;

  const UDoctorCard(
      {super.key,
      required this.image,
      required this.name,
      required this.description,
      required this.rating,
      required this.book,
      required this.isFavorite,
      this.onTap,
      required this.isBanner,
      required this.favorite});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        width: 0.9.sw,
        child: Stack(
          children: [
            TriangleCard(
              isBanner: isBanner,
              subCondition: expert,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12.0, right: 12.0, top: 9.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    image,
                    height: 141.89.h,
                    width: 123.11.w,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 162.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(name,
                                style: getMediumStyle(
                                    color: MyColors.black,
                                    fontSize: MyFonts.size18)),
                            InkWell(
                              onTap: favorite,
                              child: Icon(
                                isFavorite
                                    ? Icons.favorite
                                    : Icons.favorite_border_outlined,
                                color: isFavorite
                                    ? MyColors.appColor
                                    : MyColors.black,
                                size: 17.h,
                              ),
                            )
                          ],
                        ),
                      ),
                      padding6,
                      SizedBox(
                        width: 162.w,
                        child: Text(description,
                            style: getRegularStyle(
                                color: const Color(0xff858585),
                                fontSize: MyFonts.size12)),
                      ),
                      padding5,
                      SizedBox(
                        width: 162.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: book,
                              child: Container(
                                  height: 26.29.h,
                                  width: 70.28,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    color: MyColors.blueaccent,
                                  ),
                                  child: Center(
                                    child: Text('Book',
                                        style: getRegularStyle(
                                            color: MyColors.white,
                                            fontSize: MyFonts.size14)),
                                  )),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: MyColors.themeOrangeColor,
                                  size: 17.h,
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Text(rating.toString(),
                                    style: getSemiBoldStyle(
                                        color: MyColors.black,
                                        fontSize: MyFonts.size16)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
