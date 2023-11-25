import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/custom_button.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';
import 'package:intl/intl.dart';

class UAddRecordDetailSection extends StatefulWidget {
  final String name;
  final List<String> image;
  final List<String> title;

  const UAddRecordDetailSection(
      {super.key,
      required this.name,
      required this.image,
      required this.title});

  @override
  State<UAddRecordDetailSection> createState() =>
      _UAddRecordDetailSectionState();
}

class _UAddRecordDetailSectionState extends State<UAddRecordDetailSection> {
  int seletIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 453.h,
      width: 1.sw,
      decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(25.r),
          boxShadow: [
            BoxShadow(
                color: MyColors.black.withOpacity(0.2),
                blurRadius: 10,
                offset: const Offset(0, 3))
          ]),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          padding16,
          Text(recordfor,
              style: getRegularStyle(
                  color: MyColors.black, fontSize: MyFonts.size16)),
          padding10,
          Text(widget.name,
              style: getMediumStyle(
                  color: MyColors.appColor, fontSize: MyFonts.size18)),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: const Divider(
              thickness: 0.8,
            ),
          ),
          Text(typerecort,
              style: getRegularStyle(
                  color: MyColors.black, fontSize: MyFonts.size16)),
          padding18,
          SizedBox(
            height: 60.h,
            child: ListView.builder(
                itemCount: widget.image.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 40.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          seletIndex = index;
                        });
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            widget.image[index],
                            height: 22.h,
                            width: 17.w,
                            color: seletIndex == index
                                ? MyColors.appColor
                                : MyColors.blueaccent,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            widget.title[index],
                            style: getRegularStyle(
                                color: seletIndex == index
                                    ? MyColors.appColor
                                    : MyColors.blueaccent,
                                fontSize: MyFonts.size13),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          const Divider(
            thickness: 0.8,
          ),
          padding16,
          Text(recordcreatedon,
              style: getRegularStyle(
                  color: MyColors.black, fontSize: MyFonts.size16)),
          padding10,
          Text(DateFormat('dd MMM, yyyy').format(DateTime.now()),
              style: getMediumStyle(
                  color: MyColors.appColor, fontSize: MyFonts.size18)),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Divider(
              thickness: 0.8,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: CustomButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, AppRoutes.consulationPaymentScreen);
              },
              buttonText: uploadrecord,
              backColor: MyColors.appColor,
              borderRadius: 6.r,
              fontSize: MyFonts.size18,
            ),
          ),
        ]),
      ),
    );
  }
}
