import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/features/user/our_speciallist/widgets/u_recomended_card.dart';
import 'package:idaawee/features/user/our_speciallist/widgets/u_similar_doctor.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UReviewTabview extends StatefulWidget {
  const UReviewTabview({super.key});

  @override
  State<UReviewTabview> createState() => _UReviewTabviewState();
}

class _UReviewTabviewState extends State<UReviewTabview> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemCount: isExpanded ? 10 : 4,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: const RecomondedCard(),
                );
              },
            ),
            isExpanded
                ? const SizedBox()
                : OutlinedButton(
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(MyColors.white),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                      ),
                      side: MaterialStateProperty.all(
                        BorderSide(width: 1.6.w, color: MyColors.appColor),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        isExpanded = true;
                      });
                    },
                    child: Center(
                        child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 18.h),
                      child: Text(
                        'Load More Reviews',
                        style: getSemiBoldStyle(
                            color: MyColors.appColor, fontSize: MyFonts.size14),
                      ),
                    ))),
            SizedBox(
              height: 30.h,
            ),
            padding10,
            USimilarDoctor(
              name: 'Dr. Berlin Elizerd',
              speciality: 'Medicine Specialist',
              image: 'assets/images/img.png',
              rating: 4.5,
              review: '452',
              onPress: () {},
            ),
            Container(
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}
