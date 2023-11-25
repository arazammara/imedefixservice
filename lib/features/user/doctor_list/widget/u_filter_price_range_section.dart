import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UFilterPriceRangeSection extends StatefulWidget {
  const UFilterPriceRangeSection({super.key});

  @override
  State<UFilterPriceRangeSection> createState() =>
      _UFilterPriceRangeSectionState();
}

class _UFilterPriceRangeSectionState extends State<UFilterPriceRangeSection> {
  var _startValue = 250.0;
  var _endValue = 1600.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              priceRange,
              style: getSemiBoldStyle(
                  color: MyColors.black, fontSize: MyFonts.size20),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _startValue = 250.0;
                  _endValue = 1600.0;
                });
              },
              child: Text(
                reset,
                style: getRegularStyle(
                    color: MyColors.black, fontSize: MyFonts.size16),
              ),
            ),
          ],
        ),
        SliderTheme(
          data: SliderThemeData(
            activeTrackColor: MyColors.switchColor,
            inactiveTrackColor: Colors.purple.shade100,
            thumbColor: MyColors.blueaccent,
            overlayColor: Colors.pink.withOpacity(0.2),
            activeTickMarkColor: Colors.pinkAccent,
            inactiveTickMarkColor: Colors.white,
            thumbShape: const RoundSliderThumbShape(
              enabledThumbRadius: 14.0,
              pressedElevation: 8.0,
            ),
            valueIndicatorShape: const PaddleSliderValueIndicatorShape(),
            valueIndicatorColor: Colors.black,
            valueIndicatorTextStyle: TextStyle(
              color: Colors.white,
              fontSize: MyFonts.size10,
            ),
          ),
          child: RangeSlider(
            min: 0.0,
            max: 2000.0,
            divisions: 10,

            // activeColor: Colors.red,
            inactiveColor: MyColors.sliderbgColor,
            labels: RangeLabels(
              _startValue.round().toString(),
              _endValue.round().toString(),
            ),
            values: RangeValues(_startValue, _endValue),
            onChanged: (values) {
              setState(() {
                _startValue = values.start;
                _endValue = values.end;
              });
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text(
                  min,
                  style: getRegularStyle(
                      color: MyColors.minmaxColor, fontSize: MyFonts.size13),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  height: 45.h,
                  width: 99.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: MyColors.offerbgColor,
                  ),
                  child: Center(
                    child: Text(
                      '\$${_startValue.round().toString()}',
                      style: getMediumStyle(
                          color: MyColors.black, fontSize: MyFonts.size18),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  max,
                  style: getRegularStyle(
                      color: MyColors.minmaxColor, fontSize: MyFonts.size13),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                    height: 45.h,
                    width: 99.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: MyColors.offerbgColor,
                    ),
                    child: Center(
                      child: Text(
                        '\$${_endValue.round().toString()}',
                        style: getRegularStyle(
                            color: MyColors.black, fontSize: MyFonts.size18),
                      ),
                    )),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
