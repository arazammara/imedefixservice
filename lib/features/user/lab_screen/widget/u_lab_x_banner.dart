import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';

class ULabXBanner extends StatefulWidget {
  final List<String> imageBanner;
  const ULabXBanner({super.key, required this.imageBanner});

  @override
  State<ULabXBanner> createState() => _ULabXBannerState();
}

class _ULabXBannerState extends State<ULabXBanner> {
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
          width: 1.sw,
          height: 350.h,
          child: ClipRRect(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Swiper(
                  autoplay: true,
                  outer: false,
                  indicatorLayout: PageIndicatorLayout.NONE,
                  itemBuilder: (context, index) {
                    return Image.asset(widget.imageBanner[index],
                        fit: BoxFit.fill);
                  },
                  onIndexChanged: (value) {
                    setState(() {
                      _current = value;
                    });
                  },
                  layout: SwiperLayout.DEFAULT,
                  itemCount: widget.imageBanner.length,
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
                Positioned(
                  bottom: 15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map<Widget>(widget.imageBanner, (value, url) {
                      return Container(
                        width: 10.h,
                        height: 10.h,
                        margin: const EdgeInsets.symmetric(horizontal: 1),
                        decoration: BoxDecoration(
                          borderRadius: _current == value
                              ? BorderRadius.circular(20)
                              : BorderRadius.circular(20),
                          color: _current == value
                              ? MyColors.appColor
                              : Colors.grey.shade300,
                        ),
                      );
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
