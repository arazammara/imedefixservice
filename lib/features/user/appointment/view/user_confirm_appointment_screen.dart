import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/apis_commons.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/commons/common_widgets/confirmed_dialoge.dart';
import 'package:idaawee/commons/common_widgets/custom_button.dart';
import 'package:idaawee/features/user/appointment/widget/u_appointment_avaiable_time_card.dart';
import 'package:idaawee/features/user/appointment/widget/u_appointment_calender_section.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

// ignore: must_be_immutable
class UserConfirmedAppointmentScreen extends ConsumerWidget {
  UserConfirmedAppointmentScreen({super.key});

  late DateTime selectedMonth;

  List<String> item = [
    ten,
    eleven,
    twelve,
    one,
    two,
    three,
    four,
    five,
    six,
    seven,
    eight,
    nine
  ];

  List<String> timeItem = [
    '30 Minit',
    '40 Minit',
    '25 Minit',
    '10 Minit',
    '35 Minit',
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: MyColors.confirmbg,
      appBar: const CommonAppBar(
        appBarTitle: appointment,
      ),
      body: SizedBox(
        height: 812.h,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const UAppointmentCalenderSection(),
              Container(
                height: 358.h,
                decoration: BoxDecoration(
                    color: MyColors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45.r),
                        topRight: Radius.circular(45.r))),
                child: Column(
                  children: [
                    padding24,
                    UAppointmentAvailableTimeCard(
                      item: item,
                      title: availableTime,
                    ),
                    padding16,
                    UAppointmentAvailableTimeCard(
                      item: timeItem,
                      title: reminderMeBefore,
                    ),
                    padding16,
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: CustomButton(
                        onPressed: () {
                          _showDialoge(
                              context: context,
                              onConfirm: () {
                                Navigator.pushNamed(context,
                                    AppRoutes.userSpeciallizedQuickAppointment);
                              });
                        },
                        buttonText: confirm,
                        buttonHeight: 60.h,
                        backColor: MyColors.appColor,
                        borderRadius: 10,
                        fontSize: MyFonts.size18,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _showDialoge({
    required BuildContext context,
    required Function() onConfirm,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: ShapeBorder.lerp(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            1,
          ),
          child: DialogConfirmation(
            onConfirm: onConfirm,
          ),
        );
      },
    );
  }
}
