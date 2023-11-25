import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/commons/common_widgets/custom_button.dart';
import 'package:idaawee/features/user/appointment/view/user_confirm_appointment_screen.dart';
import 'package:idaawee/features/user/appointment/widget/u_appointment_about_section.dart';
import 'package:idaawee/features/user/appointment/widget/u_appointment_bottom_section.dart';
import 'package:idaawee/features/user/appointment/widget/u_appointment_date_piker_section.dart';
import 'package:idaawee/features/user/appointment/widget/u_appointment_profile_section.dart';
import 'package:idaawee/features/user/appointment/widget/u_appointment_working_hour_section.dart';
import 'package:idaawee/features/user/appointment/widget/u_select_consulation_section.dart';
import 'package:idaawee/features/user/appointment/widget/u_select_language_section.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UserAppointmentScreen extends StatefulWidget {
  const UserAppointmentScreen({super.key});

  @override
  State<UserAppointmentScreen> createState() => _UserAppointmentScreenState();
}

class _UserAppointmentScreenState extends State<UserAppointmentScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        appBarTitle: appointment,
      ),
      body: SizedBox(
        height: 812.h,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const UAppointmentProfileSection(),
              padding20,
              const UAppointmentDatePickerSection(),
              padding20,
              const UAppointmentWorkingHourSection(),
              padding20,
              const USelectLanguageSection(),
              padding20,
              const USelectConsulationSection(),
              padding20,
              const UAppointmentAboutSection(),
              padding20,
              const UAppointmentBottomSection(),
              padding24,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: CustomButton1(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserConfirmedAppointmentScreen(),
                      ),
                    );
                  },
                  buttonText: bookanAppointment,
                  buttonHeight: 60.h,
                  backColor: MyColors.appColor,
                  borderRadius: 10,
                  fontSize: MyFonts.size20,
                ),
              ),
              padding20,
            ],
          ),
        ),
      ),
    );
  }
}
