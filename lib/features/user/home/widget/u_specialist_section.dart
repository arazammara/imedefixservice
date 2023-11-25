import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/outline_custom_button.dart';
import 'package:idaawee/features/user/home/widget/u_speaciallist_card.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

// ignore: must_be_immutable
class USpecialListSection extends StatelessWidget {
  USpecialListSection({
    super.key,
  });
  List<String> images = [
    AppAssets.flu,
    AppAssets.fiver,
    AppAssets.migraine,
  ];
  List<String> price = [
    '₹ 100',
    '₹ 100',
    '₹ 100',
  ];
  List<String> title = [
    flu,
    fever,
    migraine,
  ];

  List<Function()> specialListFunction = [
    () {},
    () {},
    () {},
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(notsurewhichdoctortoconsult,
                style: getSemiBoldStyle(
                    color: MyColors.textColor, fontSize: MyFonts.size14)),
          ),
          padding4,
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(notsurewhichdoctortoconsultSub,
                style: getMediumStyle(
                    color: MyColors.grey, fontSize: MyFonts.size12)),
          ),
          padding10,
          SizedBox(
            height: 186.h,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return USpeciallistCard(
                    image: images[index],
                    title: title[index],
                    onTap: () {
                      Navigator.pushNamed(
                          context, AppRoutes.userQuickConsultationScreen);
                    },
                    price: price[index],
                  );
                }),
          ),
          padding16,
          Center(
            child: OutlineCustomButton(
              buttonHeight: 40.h,
              buttonWidth: 250.w,
              onPressed: () {
                Navigator.pushNamed(
                    context, AppRoutes.userSpeciallizedConsultationScreen);
              },
              buttonText: viewallSpecialists,
              textColor: MyColors.appColor,
              backColor: MyColors.appColor,
              borderRadius: 12.r,
            ),
          )
        ],
      ),
    );
  }
}
