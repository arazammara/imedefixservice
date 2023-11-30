import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/user/user_notification/widget/u_appointment_notification.dart';
import 'package:idaawee/features/user/user_notification/widget/u_system_notification.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class UserNotificationScreen extends StatelessWidget {
  const UserNotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CommonAppBar(
          onPressed: () {
            Navigator.pop(context);
          },
          appBarTitle: notification,
        ),
        body: Container(
          height: 812.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.homeBg),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                SegmentedTabControl(
                  height: 55.h,
                  indicatorPadding: EdgeInsets.symmetric(horizontal: 4.w),
                  radius: Radius.circular(100.r),
                  backgroundColor: MyColors.white,
                  tabTextColor: Colors.black45,
                  selectedTabTextColor: Colors.white,
                  textStyle: TextStyle(
                    fontSize: MyFonts.size14,
                    fontWeight: FontWeight.w500,
                  ),
                  tabs: const [
                    SegmentTab(
                      label: 'Appointments',
                      gradient: LinearGradient(
                        colors: [
                          MyColors.appColor1,
                          MyColors.appColor,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    SegmentTab(
                      label: 'System',
                      gradient: LinearGradient(
                        colors: [
                          MyColors.appColor1,
                          MyColors.appColor,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                  ],
                ),
                const Expanded(
                    child: TabBarView(children: [
                  UAppointmentNotification(),
                  USystemNotification(),
                ]))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
