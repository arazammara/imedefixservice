import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/doctor/main_menu/controller/d_main_menu_controller.dart';
import 'package:idaawee/features/user/user_main_menu/controller/main_menu_controller.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class CustomProfileAppbar extends ConsumerWidget {
  const CustomProfileAppbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Container(
          height: 320.h,
          color: MyColors.whiteColor,
        ),
        Container(
          height: 150.h,
          color: MyColors.appColor,
        ),
        ClipPath(
          clipper: HexagonalClipper(reverse: true),
          child: Container(
            height: 281.h,
            width: 1.sw,
            color: MyColors.appColor,
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(left: 25.0, right: 25.w, bottom: 25.h, top: 50.h),
          child: SizedBox(
            width: 1.sw,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      final mainMenuCtr = ref.watch(mainMenuProvider);
                      final dmainMenuCtr = ref.watch(dMainMenuProvider);
                      mainMenuCtr.setIndex(0) ?? dmainMenuCtr.setIndex(0);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 20.h,
                      color: MyColors.white,
                    ),
                  ),
                  Text(
                    'profile',
                    style: getSemiBoldStyle(
                        color: MyColors.white, fontSize: MyFonts.size16),
                  ),
                  Container(
                    width: 30.w,
                  ),
                ]),
          ),
        ),
        Positioned(
          bottom: 0.h,
          right: 18,
          left: 18,
          child: SizedBox(
            width: 375.w,
            child: Container(
              height: 174.h,
              width: 375.w,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: MyColors.white,
                  boxShadow: [
                    BoxShadow(
                      color: MyColors.black.withOpacity(0.09),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: const Offset(3, 3), // changes position of shadow
                    ),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Amelia Adam',
                    style: getSemiBoldStyle(
                        color: MyColors.callbgColor, fontSize: MyFonts.size16),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              AppAssets.pmap,
                              height: 14.h,
                              width: 14.w,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              savedAddresses,
                              style: getRegularStyle(
                                  color: MyColors.black.withOpacity(0.8),
                                  fontSize: MyFonts.size10),
                            ),
                          ],
                        ),
                        Container(
                          height: 18.h,
                          width: 2.w,
                          color: MyColors.lightBlue.withOpacity(0.23),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(
                                context, AppRoutes.checkOutOrderHistory);
                          },
                          child: Container(
                            color: MyColors.white,
                            child: Row(
                              children: [
                                Image.asset(
                                  AppAssets.bag,
                                  height: 14.h,
                                  width: 14.w,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  ordersHistory,
                                  style: getRegularStyle(
                                      color: MyColors.black.withOpacity(0.8),
                                      fontSize: MyFonts.size10),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: 115.h,
            left: 134.w,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200.r),
              child: Image.asset(
                AppAssets.profile,
                height: 100.h,
                width: 100.h,
              ),
            )),
      ],
    );
  }
}
