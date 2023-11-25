import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

import '../../../../routes/route_manager.dart';
import '../../../../utils/constants/app_constants.dart';
import '../../appointment/widget/u_doctor_appointment_card.dart';

class USurgerySection extends StatefulWidget {
  const USurgerySection({super.key});

  @override
  State<USurgerySection> createState() => _USurgerySectionState();
}

class _USurgerySectionState extends State<USurgerySection> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(surgery,
              style: getSemiBoldStyle(
                  color: MyColors.textColor, fontSize: MyFonts.size14)),
          padding4,
          Text(bookSurgeryinjust1min,
              style: getMediumStyle(
                  color: MyColors.grey, fontSize: MyFonts.size12)),
          padding10,
          UDoctorAppointmentCard(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.userAppointment);
            },
            name: "Dr. Sasha",
            description:
                "Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.",
            image: doctor3Image,
            rating: 5,
          ),
        ],
      ),
    );
  }
}

// import 'package:idaawee/commons/common_imports/common_libs.dart';
// import 'package:idaawee/commons/common_text/common.text.dart';
// import 'package:idaawee/commons/outline_custom_button.dart';
// import 'package:idaawee/utils/constants/font_manager.dart';

// class SurgeryBoxandBookClient extends StatelessWidget {
//   final bool bookClient;
//   final Widget? consultanteDoctor;
//   final String consultDoctorImage;
//   final String consultDoctorTitle;
//   final String consultDoctorSubtitle;
//   final String consultDoctorAvailableTime;
//   final int price;
//   final Function() viewAllSepcialist;

//   const SurgeryBoxandBookClient({
//     super.key,
//     this.consultanteDoctor,
//     required this.consultDoctorImage,
//     required this.consultDoctorTitle,
//     required this.consultDoctorSubtitle,
//     required this.consultDoctorAvailableTime,
//     required this.price,
//     required this.viewAllSepcialist,
//     required this.bookClient,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding:
//           EdgeInsets.symmetric(horizontal: 18, vertical: bookClient ? 10 : 0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 5.0),
//             child: Text(bookClient ? bookClinicAppointment : surgery,
//                 style: getMediumStyle(
//                     color: MyColors.black, fontSize: MyFonts.size15)),
//           ),
//           SizedBox(
//             height: 3.h,
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 5.0),
//             child: Text(
//                 bookClient ? meetdoctorinrealclinic : bookSurgeryinjust1min,
//                 style: getMediumStyle(
//                     color: MyColors.grey, fontSize: MyFonts.size10)),
//           ),
//           SizedBox(
//             height: 3.h,
//           ),
//           !bookClient ? consultanteDoctor! : Container(),
//           SizedBox(
//             height: 10.h,
//           ),
//           !bookClient
//               ? Padding(
//                   padding: const EdgeInsets.only(left: 5.0),
//                   child: Text(consultdoctoroverVideo,
//                       style: getMediumStyle(
//                           color: MyColors.black, fontSize: MyFonts.size15)),
//                 )
//               : Container(),
//           SizedBox(
//             height: !bookClient ? 3.h : 0,
//           ),
//           !bookClient
//               ? Padding(
//                   padding: const EdgeInsets.only(left: 5.0),
//                   child: Text(bookSurgeryinjust1min,
//                       style: getMediumStyle(
//                           color: MyColors.grey, fontSize: MyFonts.size10)),
//                 )
//               : Container(),
//           SizedBox(
//             height: 8.h,
//           ),

//           SizedBox(
//             height: 20.h,
//           ),

//         ],
//       ),
//     );
//   }


// }
