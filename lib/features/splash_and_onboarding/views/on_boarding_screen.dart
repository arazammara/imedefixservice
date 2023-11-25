import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/features/splash_and_onboarding/controller/onboarding_controller.dart';
import 'package:idaawee/features/splash_and_onboarding/widgets/on_boarding_page_section.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';

class OnbordingScreen extends ConsumerWidget {
  const OnbordingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WillPopScope(
      onWillPop: ()async{
        return false;
      },
      child: Scaffold(
          body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            controller:
                ref.watch(onboardingControllerProvider.notifier).pageController,
            children: const [
              OnboardingPageSection(
                title: onBoardingScreens1,
                image: AppAssets.splash_1,
              ),
              OnboardingPageSection(
                title: onBoardingScreens2,
                image: AppAssets.splash_2,
              ),
              OnboardingPageSection(
                title: onBoardingScreens3,
                image: AppAssets.splash_3,
              ),
              // Add more screens here
            ],
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(left: 37, bottom: 32),
            child: SizedBox(
              height: 54.h,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, AppRoutes.accountType);
                    },
                    child: SizedBox(
                      width: 139.w,
                      child: Center(
                        child: Text(
                          skip,
                          style: getMediumStyle(
                              color: MyColors.appColor, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25.w,
                  ),
                  InkWell(
                    onTap: () {
                      ref.read(onboardingControllerProvider.notifier).state == 2
                          ? Navigator.pushReplacementNamed(
                              context, AppRoutes.loginScreen)
                          : ref
                              .read(onboardingControllerProvider.notifier)
                              .nextPage();
                    },
                    child: Container(
                      width: 139.w,
                      height: 54.h,
                      decoration: BoxDecoration(
                        color: MyColors.appColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          next,
                          style:
                              getMediumStyle(color: MyColors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
