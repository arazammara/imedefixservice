import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';

class UExploreProductBanner extends StatefulWidget {
  const UExploreProductBanner({
    super.key,
  });

  @override
  State<UExploreProductBanner> createState() => _UExploreProductBannerState();
}

class _UExploreProductBannerState extends State<UExploreProductBanner> {
  List<String> imageBanner = [
    AppAssets.xLab,
    AppAssets.xLab,
    AppAssets.xLab,
  ];
  bool isFav = false;
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
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            SizedBox(
              height: 280.h,
              width: 328.h,
              child: Swiper(
                autoplay: false,
                outer: false,
                indicatorLayout: PageIndicatorLayout.NONE,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      SizedBox(
                        height: 15.h,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.r),
                        child: Image.asset(imageBanner[index],
                            height: 280.h, width: 328.w, fit: BoxFit.cover),
                      ),
                    ],
                  );
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
            ),
            Positioned(
              top: 15.h,
              right: 18,
              child: InkWell(
                onTap: () {
                  setState(() {
                    isFav = !isFav;
                  });
                },
                child: Icon(
                  isFav ? Icons.favorite : Icons.favorite_border,
                  color: isFav ? MyColors.appColor : MyColors.textLightColor,
                  size: 22.h,
                ),
              ),
            ),
          ],
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
