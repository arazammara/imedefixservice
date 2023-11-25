import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/u_common_doctor_card.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 18.0),
            child: UCommonDoctorCard(
              isbanner: true,
              payment: false,
              seeAllDoctors: () {},
              isFavorite: isFavorite,
              image: AppAssets.doctorpro,
              name: 'Dr.Pawan',
              description:
                  'Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.',
              rating: 4.5,
              book: () {},
              favorite: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
              bannertitle: expert,
              color: MyColors.appColor,
            ),
          );
        },
      ),
    );
  }
}
