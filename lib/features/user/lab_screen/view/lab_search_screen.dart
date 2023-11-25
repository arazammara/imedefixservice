import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

import '../../../../routes/route_manager.dart';
import '../../../../utils/constants/assets_manager.dart';
import '../widget/lab_search_bar.dart';
import '../widget/u_popular_lab_test_card.dart';
import '../widget/u_popular_lab_test_doctor_detail_card.dart';

class LabSearchScreen extends StatefulWidget {
  const LabSearchScreen({super.key});

  @override
  State<LabSearchScreen> createState() => _LabSearchScreenState();
}

class _LabSearchScreenState extends State<LabSearchScreen> {
  var searchController = TextEditingController();

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
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
              toolbarHeight: 125.h ,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 20.h,
                  color: MyColors.black94,
                ),
              ),
              centerTitle: true,
              title: Text(
                'List of Labs',
                style: getSemiBoldStyle(
                    color: MyColors.black94, fontSize: MyFonts.size16),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(0),
                child: Column(
                  children: [
                    LabsSearchBars(
                      controller: searchController,
                      hintText: search,
                      onChanged: (value) {},
                      onFieldSubmitted: (value) {},
                      sort: () {
                      },
                      microphone: () {},
                    ),
                  ],
                ),
              )),
          body: ListView.builder(
              padding: EdgeInsets.all(18.h),
              physics: const BouncingScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Container(
                    height: 251.h,
                    width: 0.95.sw,
                    color: MyColors.borderColor,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
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
    );
  }
}
