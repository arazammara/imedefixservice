import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/features/user/our_speciallist/widgets/u_similar_doctor.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UAboutDoctorTabview extends StatelessWidget {
  const UAboutDoctorTabview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: MyColors.white,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lorem ipsum dolor sit amet, consectet adipiscing elit, sed do eiusmod tempor incididunt uirt labore et dolore magna aliqua. Ut enim ad miniveniam, quis nostrud exercitation.',
                      style: getMediumStyle(
                          color: MyColors.grey, fontSize: MyFonts.size14),
                    ),
                    padding10,
                    Text(
                      'Specialization',
                      style: getSemiBoldStyle(
                          color: MyColors.black, fontSize: MyFonts.size18),
                    ),
                    padding10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 2.5.h,
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              'Obstetrician',
                              style: getMediumStyle(
                                  color: MyColors.grey,
                                  fontSize: MyFonts.size14),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 2.5.h,
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              'Gynecologist',
                              style: getMediumStyle(
                                  color: MyColors.grey,
                                  fontSize: MyFonts.size14),
                            ),
                          ],
                        ),
                        Container(
                          width: 45.w,
                        ),
                      ],
                    ),
                    padding10,
                    Text(
                      'Education',
                      style: getSemiBoldStyle(
                          color: MyColors.black, fontSize: MyFonts.size18),
                    ),
                    padding10,
                    Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 12.w),
                            CircleAvatar(
                              radius: 2.5.h,
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              'M.B.B.S. - UHS, London',
                              style: getMediumStyle(
                                  color: MyColors.grey,
                                  fontSize: MyFonts.size14),
                            ),
                          ],
                        ),
                        padding10,
                        Row(
                          children: [
                            SizedBox(width: 12.w),
                            CircleAvatar(
                              radius: 2.5.h,
                            ),
                            SizedBox(width: 8.w),
                            SizedBox(
                              width: 250.w,
                              child: Text(
                                'M.S. Obstetrics and Gynecology PGMI/UHS, London',
                                style: getMediumStyle(
                                    color: MyColors.grey,
                                    fontSize: MyFonts.size14),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    padding10,
                    Text(
                      'Conditions Treated',
                      style: getSemiBoldStyle(
                          color: MyColors.black, fontSize: MyFonts.size18),
                    ),
                    padding10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 2.5.h,
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              'Amenorrhoea',
                              style: getMediumStyle(
                                  color: MyColors.grey,
                                  fontSize: MyFonts.size14),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 2.5.h,
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              'Aplastic Anemia',
                              style: getMediumStyle(
                                  color: MyColors.grey,
                                  fontSize: MyFonts.size14),
                            ),
                          ],
                        ),
                        Container(
                          width: 45.w,
                        ),
                      ],
                    ),
                    padding10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 2.5.h,
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              'Ectopic Pregnancy',
                              style: getMediumStyle(
                                  color: MyColors.grey,
                                  fontSize: MyFonts.size14),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 2.5.h,
                            ),
                            SizedBox(width: 8.w),
                            Text(
                              'Endometriosis',
                              style: getMediumStyle(
                                  color: MyColors.grey,
                                  fontSize: MyFonts.size14),
                            ),
                          ],
                        ),
                        Container(
                          width: 45.w,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
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
          ],
        ),
      ),
    );
  }
}
