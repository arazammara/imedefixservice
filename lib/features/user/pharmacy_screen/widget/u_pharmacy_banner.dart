import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';

class UPharmacyBanner extends StatefulWidget {
  const UPharmacyBanner({
    super.key,
  });

  @override
  State<UPharmacyBanner> createState() => _UPharmacyBannerState();
}

class _UPharmacyBannerState extends State<UPharmacyBanner> {
  List<String> imageBanner = [
    AppAssets.pbanner,
    AppAssets.pbanner,
    AppAssets.pbanner,
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
      children: [
        SizedBox(
          width: 370.w,
          height: 200.h,
          child: ClipRRect(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Swiper(
                  autoplay: true,
                  outer: false,
                  indicatorLayout: PageIndicatorLayout.NONE,
                  itemBuilder: (context, index) {
                    return Image.asset(imageBanner[index], fit: BoxFit.fill);
                  },
                  onIndexChanged: (value) {
                    setState(() {
                      _current = value;
                    });
                  },
                  layout: SwiperLayout.DEFAULT,
                  itemCount: imageBanner.length,
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
        padding10,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: map<Widget>(imageBanner, (value, url) {
            return Container(
              width: 8.h,
              height: 8.h,
              margin: const EdgeInsets.symmetric(horizontal: 1),
              decoration: BoxDecoration(
                borderRadius: _current == value
                    ? BorderRadius.circular(20)
                    : BorderRadius.circular(20),
                border: Border.all(
                    color: _current == value
                        ? MyColors.blueaccent
                        : MyColors.black,
                    width: 0.5),
                color: _current == value ? MyColors.blueaccent : Colors.white,
              ),
            );
          }),
        ),
      ],
    );
  }
}
