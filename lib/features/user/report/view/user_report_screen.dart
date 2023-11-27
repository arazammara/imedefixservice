import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/features/user/user_main_menu/controller/main_menu_controller.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';

import '../../../../utils/constants/font_manager.dart';
import '../widget/u_report_card_widget.dart';

class UserReportScreen extends ConsumerWidget {
  const UserReportScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> text = [
      'Blood Report',
      'CT Scan',
      'MRI',
    ];
    final List<String> image = [
      AppAssets.bloodRep,
      AppAssets.ctscan,
      AppAssets.mri,
    ];
    return WillPopScope(
      onWillPop: () async {
        final mainMenuCtr = ref.watch(mainMenuProvider);
        mainMenuCtr.setIndex(0);
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xff38B698).withOpacity(0.1),
          leading: IconButton(
            onPressed: () {
              final mainMenuCtr = ref.watch(mainMenuProvider);
              mainMenuCtr.setIndex(0);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20.h,
              color: MyColors.black94,
            ),
          ),
          centerTitle: true,
          title: Text(
            'Reports',
            style: getSemiBoldStyle(
                color: MyColors.black94, fontSize: MyFonts.size18),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.addReportScreen);
              },
              icon: Image.asset(
                AppAssets.add,
                width: 20.w,
                height: 20.h,
                color: MyColors.black,
              ),
            )
          ],
        ),
        resizeToAvoidBottomInset: false,
        body: Container(
            height: 1.sh,
            width: 1.sw,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.homeBg),
                fit: BoxFit.cover,
              ),
            ),
            child: ListView.builder(
                padding: const EdgeInsets.all(18),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: image.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: UReportCardWidget(
                      date: '19 Mar 2023',
                      documents: index + 1,
                      title: text[index],
                      img: image[index],
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRoutes.reportDetailScreen,
                            arguments: {
                              'title': text[index],
                            });
                      },
                    ),
                  );
                })),
      ),
    );
  }
}
