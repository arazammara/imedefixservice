import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

import '../../../../commons/common_imports/common_libs.dart';

class UGeneticTestingLabCard extends StatelessWidget {
  final String image;
  final String name;
  final String address;
  final String profession;
  final String labName;
  final String labAddress;
  final String consultant;

  const UGeneticTestingLabCard(
      {super.key,
      required this.image,
      required this.name,
      required this.address,
      required this.profession,
      required this.labName,
      required this.consultant,
      required this.labAddress});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 196.h,
      width: 1.sw,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: MyColors.lightContainerColor),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 84,
              width: 1.sw,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: MyColors.containerColor),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 7),
                child: Row(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(100.r),
                        child: Image.asset(
                          image,
                          height: 64.h,
                          width: 64.h,
                        )),
                    padding15,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          name,
                          style: getMediumStyle(
                              color: MyColors.black, fontSize: MyFonts.size12),
                        ),
                        Row(
                          children: [
                            Text(
                              consultant,
                              style: getSemiBoldStyle(
                                  color: MyColors.grey,
                                  fontSize: MyFonts.size14),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Container(
                                height: 20.h,
                                width: 1.5.w,
                                color: MyColors.blueaccent.withOpacity(0.2),
                              ),
                            ),
                            Text(
                              profession,
                              style: getSemiBoldStyle(
                                  color: MyColors.grey,
                                  fontSize: MyFonts.size14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            padding10,
            Text(labName,
                style: getBoldStyle(
                    color: MyColors.black, fontSize: MyFonts.size16)),
            SizedBox(
              height: 2.h,
            ),
            Text(labName,
                style: getMediumStyle(
                    color: MyColors.loginScreenTextColor,
                    fontSize: MyFonts.size12)),
            padding5,
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      border: Border.all(color: MyColors.lightContainerColor)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                    child: Center(
                      child: Text('Crona',
                          style: getSemiBoldStyle(
                              color: MyColors.loginScreenTextColor,
                              fontSize: MyFonts.size14)),
                    ),
                  ),
                ),
               padding15,
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      border: Border.all(color: MyColors.lightContainerColor)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    child: Center(
                      child: Text('santna',
                          style: getSemiBoldStyle(
                              color: MyColors.loginScreenTextColor,
                              fontSize: MyFonts.size14)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 15.w,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.r),
                      border: Border.all(color: MyColors.lightContainerColor)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                    child: Center(
                      child: Text('Heigne',
                          style: getSemiBoldStyle(
                              color: MyColors.loginScreenTextColor,
                              fontSize: MyFonts.size14)),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
