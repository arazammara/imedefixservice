import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/features/user/home/widget/u_doctor_consulation_card.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';
import '../../../../utils/constants/app_constants.dart';

class UNextAppointmentWidget extends StatefulWidget {
  const UNextAppointmentWidget({super.key, this.isdoctor = false});
  final bool isdoctor;

  @override
  State<UNextAppointmentWidget> createState() => _UNextAppointmentWidgetState();
}

class _UNextAppointmentWidgetState extends State<UNextAppointmentWidget> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: widget.isdoctor == false
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Next Appointments',
                    style: getBoldStyle(
                        color: MyColors.textColor, fontSize: MyFonts.size16)),
                const SizedBox(
                  height: 10,
                ),
                UDoctorNextAppointmentCard(
                  onTap: () {
                    Navigator.pushNamed(
                        context, AppRoutes.userNextAppintmentScreen);
                  },
                  name: "Dr. Darlene Robertson",
                  specialist: "Dentist Specialist",
                  image: 'assets/images/im1.png',
                  // rating: 5,
                  date: 'Monday, May 12',
                  time: '11:00 - 12:00 AM',
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Next Appointments',
                    style: getBoldStyle(
                        color: MyColors.textColor, fontSize: MyFonts.size16)),
                const SizedBox(
                  height: 10,
                ),
                UDoctorNextAppointmentCard(
                  onTap: () {
                    Navigator.pushNamed(
                        context, AppRoutes.userNextAppintmentScreen);
                  },
                  name: "Alex Anderson",
                  specialist: "28 Years old",
                  image: 'assets/images/whiteman.png',
                  // rating: 5,
                  date: 'Monday, May 12',
                  time: '11:00 - 12:00 AM',
                ),
              ],
            ),
    );
  }
}
