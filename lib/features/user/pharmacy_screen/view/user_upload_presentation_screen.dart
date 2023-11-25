import 'package:easy_stepper/easy_stepper.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/user/pharmacy_screen/view/user_order_history_screen.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_address_section.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_delivery_section.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_payment_section.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_place_order_section.dart';
import 'package:idaawee/features/user/pharmacy_screen/widget/u_upload_presentation_section.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UserUploadPresentationScreen extends StatefulWidget {
  const UserUploadPresentationScreen({super.key});

  @override
  State<UserUploadPresentationScreen> createState() =>
      _UserUploadPresentationScreenState();
}

class _UserUploadPresentationScreenState
    extends State<UserUploadPresentationScreen> {
  int activeStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const CommonAppBar(
        appBarTitle: uploadPrescription,
      ),
      body: SizedBox(
        height: 812.h,
        child: Column(
          children: [
            EasyStepper(
                activeStep: activeStep,
                lineLength: 47.w,
                lineSpace: 0,
                lineType: LineType.normal,
                showTitle: false,
                defaultLineColor: MyColors.lightContainerColor,
                finishedLineColor: MyColors.blueaccent,
                finishedStepBackgroundColor: MyColors.blueaccent,
                activeStepTextColor: Colors.transparent,
                finishedStepTextColor: MyColors.red,
                internalPadding: 0,
                showLoadingAnimation: false,
                stepRadius: 8,
                showStepBorder: false,
                lineThickness: 1.2,
                steps: [
                  EasyStep(
                    customStep: Container(
                      height: 16.h,
                      width: 16.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.r),
                        border: Border.all(
                            color: activeStep == 0
                                ? MyColors.blueaccent
                                : MyColors.lightContainerColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: CircleAvatar(
                          radius: 6.h,
                          backgroundColor: activeStep == 0
                              ? MyColors.blueaccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  EasyStep(
                    customStep: Container(
                      height: 16.h,
                      width: 16.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.r),
                        border: Border.all(
                            color: activeStep == 1
                                ? MyColors.blueaccent
                                : MyColors.lightContainerColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: CircleAvatar(
                          radius: 6.h,
                          backgroundColor: activeStep == 1
                              ? MyColors.blueaccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    topTitle: true,
                  ),
                  EasyStep(
                    customStep: Container(
                      height: 16.h,
                      width: 16.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.r),
                        border: Border.all(
                            color: activeStep == 2
                                ? MyColors.blueaccent
                                : MyColors.lightContainerColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: CircleAvatar(
                          radius: 6.h,
                          backgroundColor: activeStep == 2
                              ? MyColors.blueaccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                  EasyStep(
                    customStep: Container(
                      height: 16.h,
                      width: 16.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.r),
                        border: Border.all(
                            color: activeStep == 3
                                ? MyColors.blueaccent
                                : MyColors.lightContainerColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: CircleAvatar(
                          radius: 6.h,
                          backgroundColor: activeStep == 3
                              ? MyColors.blueaccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    topTitle: true,
                  ),
                  EasyStep(
                    customStep: Container(
                      height: 16.h,
                      width: 16.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.r),
                        border: Border.all(
                            color: activeStep == 4
                                ? MyColors.blueaccent
                                : MyColors.lightContainerColor),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: CircleAvatar(
                          radius: 6.h,
                          backgroundColor: activeStep == 4
                              ? MyColors.blueaccent
                              : Colors.transparent,
                        ),
                      ),
                    ),
                  ),
                ],
                onStepReached: null),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 55.w,
                    child: Text(
                      uploadPrescription,
                      textAlign: TextAlign.center,
                      style: getRegularStyle(
                          color: MyColors.black, fontSize: MyFonts.size10),
                    ),
                  ),
                  SizedBox(
                    width: 55.w,
                    child: Text(
                      address,
                      textAlign: TextAlign.center,
                      style: getRegularStyle(
                          color: MyColors.black, fontSize: MyFonts.size10),
                    ),
                  ),
                  SizedBox(
                    width: 55.w,
                    child: Text(
                      placeorder,
                      textAlign: TextAlign.center,
                      style: getRegularStyle(
                          color: MyColors.black, fontSize: MyFonts.size10),
                    ),
                  ),
                  SizedBox(
                    width: 55.w,
                    child: Text(
                      payment,
                      textAlign: TextAlign.center,
                      style: getRegularStyle(
                          color: MyColors.black, fontSize: MyFonts.size10),
                    ),
                  ),
                  SizedBox(
                    width: 55.w,
                    child: Text(
                      delivery,
                      textAlign: TextAlign.center,
                      style: getRegularStyle(
                          color: MyColors.black, fontSize: MyFonts.size10),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 28.5.h,
            ),
            activeStep == 0
                ? const UUploadPresentationSection()
                : activeStep == 1
                    ? UAddressSection()
                    : activeStep == 2
                        ? const UPlaceOrderSection()
                        : activeStep == 3
                            ? const UPaymentSection()
                            : const UDeliverySection(),
            const Spacer(),
            InkWell(
              onTap: () {
                setState(() {
                  activeStep == 0
                      ? activeStep = 1
                      : activeStep == 1
                          ? activeStep = 2
                          : activeStep == 2
                              ? activeStep = 3
                              : activeStep == 3
                                  ? activeStep = 4
                                  : activeStep = 5;
                });
                if (activeStep == 5) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const UserOrderHistoryScreen()));
                }
              },
              child: Container(
                  height: 60.h,
                  width: 1.sw,
                  color: MyColors.appColor,
                  child: Center(
                    child: Text(
                      activeStep == 0
                          ? continu
                          : activeStep == 1
                              ? saveaddressproceed
                              : activeStep == 2
                                  ? placeorder
                                  : continu,
                      style: getSemiBoldStyle(
                          color: MyColors.white, fontSize: MyFonts.size14),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
