import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/features/splash_and_onboarding/controller/onboarding_controller.dart';

class OnboardingPageSection extends ConsumerWidget {
  final String image;
  final String title;

  const OnboardingPageSection({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(onboardingControllerProvider.notifier).state;
    return Container(
      height: 1.h,
      width: 1.sw,
      color: MyColors.appColor,
      child: Stack(
        children: [
          Container(
            height: 562.h,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 268.h,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(76),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: MyColors.black.withOpacity(0.1),
                      blurRadius: 3,
                      spreadRadius: 6,
                      offset: const Offset(3, 3),
                    )
                  ],
                  color: MyColors.appColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 265.h,
                    width: 1.sw,
                    decoration: const BoxDecoration(
                      color: MyColors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(78)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 36, right: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          padding45,
                          Text(
                            title,
                            style: getBoldStyle(
                                color: MyColors.black, fontSize: 20),
                          ),
                          padding30,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              for (int i = 0; i < 3; i++)
                                Container(
                                    margin: const EdgeInsets.all(2),
                                    width: state == i ? 10 : 6,
                                    height: state == i ? 10 : 6,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: state == i
                                          ? MyColors.appColor
                                          : MyColors.dotColor,
                                    ))
                            ],
                          ),
                          padding30
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
