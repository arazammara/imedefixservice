import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/features/user/user_notification/widget/u_notification_card.dart';

class UAppointmentNotification extends StatelessWidget {
  const UAppointmentNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      padding: EdgeInsets.only(top: 10.h),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 10.h),
          child: const UNotificationAppointmentCard(
              date: 'date', timeago: 'timeago', title: 'title'),
        );
      },
    );
  }
}
