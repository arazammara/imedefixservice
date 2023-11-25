import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/user/lab_screen/widget/u_popular_lab_test_card.dart';
import 'package:idaawee/features/user/lab_screen/widget/u_popular_lab_test_doctor_detail_card.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UPopularLabTestSection extends StatefulWidget {
  const UPopularLabTestSection({
    super.key,
  });

  @override
  State<UPopularLabTestSection> createState() => _UPopularLabTestSectionState();
}

class _UPopularLabTestSectionState extends State<UPopularLabTestSection> {
  List<String> banner = [
    AppAssets.banner,
    AppAssets.banner,
    AppAssets.banner,
  ];
  int _current = 0;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Text(popularLabTest,
              style: getMediumStyle(
                  color: MyColors.black, fontSize: MyFonts.size18)),
        ),
       padding15,
        SizedBox(
          height: 520.h,
          width: 0.95.sw,
          child: ListView.builder(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Container(
                    height: 251.h,
                    width: 0.95.sw,
                    color: MyColors.borderColor,
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: (){},
                            child: SizedBox(
                              width: 0.9.sw,
                              height: 125.h,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Swiper(
                                      autoplay: true,
                                      outer: false,
                                      indicatorLayout: PageIndicatorLayout.NONE,
                                      itemBuilder: (context, index) {
                                        return UPopularLabTestCard(
                                          favorite: () {},
                                          date: '03 may',
                                          detail:
                                              'ipsum dolor sit amet, consectetur',
                                          image: AppAssets.labtest,
                                          name: 'nagod, satna',
                                          price: '\$350 USD',
                                          testTypes: 'Chronic',
                                        );
                                      },
                                      onIndexChanged: (value) {
                                        setState(() {
                                          _current = value;
                                        });
                                      },
                                      layout: SwiperLayout.DEFAULT,
                                      itemCount: banner.length,
                                      pagination: const SwiperPagination(
                                          builder: SwiperPagination(
                                        builder: DotSwiperPaginationBuilder(
                                            color: Colors.transparent,
                                            activeColor: Colors.transparent,
                                            size: 10,
                                            activeSize: 10),
                                      )),
                                      control: SwiperControl(
                                        color: Colors.black.withOpacity(0.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: map<Widget>(banner, (value, url) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 5),
                                  child: Container(
                                    width: 12.h,
                                    height: 12.h,
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 1),
                                    decoration: BoxDecoration(
                                        borderRadius: _current == value
                                            ? BorderRadius.circular(20)
                                            : BorderRadius.circular(20),
                                        color: _current == value
                                            ? MyColors.appColor
                                            : MyColors.white),
                                  ),
                                );
                              }),
                            ),
                          ),
                          UpopularLabTestDoctorDetailCard(
                            doctorImage: AppAssets.profile,
                            doctorName: 'Doctor Samantha',
                            doctorType: 'Consultant',
                            viewDetail: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.xlabDetail);
                            },
                            orders: () {
                              Navigator.pushNamed(context, AppRoutes.orderlabScreen);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
