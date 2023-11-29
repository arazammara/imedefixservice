import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/features/user/our_speciallist/widgets/u_platinum_body_session.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UserPlatinumProviderScreen extends StatelessWidget {
  const UserPlatinumProviderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 1.sh,
        width: 1.sw,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [MyColors.appColor1, MyColors.appColor],
              begin: Alignment.topLeft,
              end: Alignment.topRight),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              child: Image.asset(
                AppAssets.loginBg,
                color: MyColors.white.withOpacity(0.1),
                width: 307.w,
                height: 274.h,
              ),
            ),
            Positioned(
              right: 40.w,
              child: Image.asset(
                AppAssets.bgGradient,
                width: 307.w,
                height: 274.h,
              ),
            ),

            Positioned(
              top: 50.h,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  width: 1.sw,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back_ios,
                            color: MyColors.white),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Text(
                        'Platinum Provider',
                        style: getBoldStyle(
                            color: MyColors.white, fontSize: MyFonts.size16),
                      ),
                      IconButton(
                        icon: const Icon(Icons.share, color: MyColors.white),
                        onPressed: () {},
                      ),
                    ],
                  )),
            ),
            // main container
            Padding(
              padding: EdgeInsets.only(top: 120.h),
              child: const UPlatinumProviderBodySession(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 115.h, left: 110.w),
              child: Container(
                height: 167.h,
                width: 167.w,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/images/img.png'),
                      fit: BoxFit.cover),
                  border: Border.all(color: MyColors.white, width: 1.5),
                  borderRadius: BorderRadius.circular(5.r),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 215.h, right: 25.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite_border,
                        color: MyColors.appColor,
                        size: 27.h,
                      )),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 250.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25.h,
                    backgroundColor: MyColors.white,
                    child: Image.asset(
                      AppAssets.star,
                      height: 29.h,
                      width: 29.w,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
