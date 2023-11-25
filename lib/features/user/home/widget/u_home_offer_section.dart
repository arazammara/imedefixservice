import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/apis_commons.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/user/home/widget/u_home_offer_card.dart';
import 'package:idaawee/features/user/user_main_menu/controller/main_menu_controller.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

// ignore: must_be_immutable
class UHomeOfferSection extends ConsumerWidget {
  UHomeOfferSection({super.key});

  List<String> image = [
    AppAssets.consulation,
    AppAssets.appointment,
    AppAssets.labtest,
    AppAssets.pharmacy,
  ];
  List<String> title = [
    consultation,
    appointment,
    labtest,
    pharmacy,
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<VoidCallback> onTap = [
      () {
        Navigator.pushNamed(
          context,
          AppRoutes.userSpeciallizedConsultationScreen,
        );
      },
      () {
        Navigator.pushNamed(
            context, AppRoutes.userSpeciallizedQuickAppointment);
      },
      () {
        final mainMenuCtr = ref.watch(mainMenuProvider);
        mainMenuCtr.setIndex(3);
      },
      () {
        final mainMenuCtr = ref.watch(mainMenuProvider);
        mainMenuCtr.setIndex(1);
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(weareoffering,
                style: getSemiBoldStyle(
                    color: MyColors.textColor, fontSize: MyFonts.size14)),
          ),
          padding10,
          SizedBox(
            height: 122.h,
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return UHomeOfferCard(
                      image: image[index],
                      title: title[index],
                      onTap: onTap[index]);
                }),
          )
        ],
      ),
    );
  }
}
