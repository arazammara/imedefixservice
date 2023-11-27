import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';
import '../../../../utils/constants/app_constants.dart';
import '../../consulation/widget/u_doctor_consultation_card.dart';

class UNextAppointmentWidget extends StatefulWidget {
  const UNextAppointmentWidget({super.key});

  @override
  State<UNextAppointmentWidget> createState() => _UNextAppointmentWidgetState();
}

class _UNextAppointmentWidgetState extends State<UNextAppointmentWidget> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Next Appointments',
              style: getBoldStyle(
                  color: MyColors.textColor, fontSize: MyFonts.size16)),
          const SizedBox(
            height: 10,
          ),
          UDoctorConsultationCard(
            onTap: () {
              Navigator.pushNamed(
                  context, AppRoutes.userQuickConsultationScreen);
            },
            name: "Dr. Darlene Robertson",
            specialist: "Dentist Specialist",
            image: doctorImage,
            // rating: 5,
            date: 'Monday, May 12',
            time: '11:00 - 12:00 AM',
          ),
        ],
      ),
    );
  }
}
