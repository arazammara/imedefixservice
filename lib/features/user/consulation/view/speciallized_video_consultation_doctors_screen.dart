import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/routes/route_manager.dart';

import '../../../../utils/constants/app_constants.dart';
import '../widget/speciallized_video_consultations_doctors.dart';

class SpecializedVideoConsultationDoctorsScreen extends StatefulWidget {
  const SpecializedVideoConsultationDoctorsScreen({super.key});

  @override
  State<SpecializedVideoConsultationDoctorsScreen> createState() =>
      _SpecializedVideoConsultationDoctorsScreenState();
}

class _SpecializedVideoConsultationDoctorsScreenState
    extends State<SpecializedVideoConsultationDoctorsScreen> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: GridView.builder(
          itemCount: 10,
          padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 250.h,
              crossAxisSpacing: 10.w,
              mainAxisSpacing: 10),
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 18.0),
              child: SpecializedVideoConsultationDoctors(
                consultDoctorAvailableTime: 'Available in 2 min',
                consultDoctorImage: doctor3Image,
                consultDoctorSubtitle:
                    'Look charming again . follow or dermatologist',
                consultDoctorTitle: 'Cardiologist',
                price: 210,
                onTap: () {
                  Navigator.pushNamed(
                      context, AppRoutes.userQuickConsultationScreen);
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
