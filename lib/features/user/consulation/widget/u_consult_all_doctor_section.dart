import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/u_common_doctor_card.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';

class UConsultAllDoctorSection extends StatefulWidget {
  final bool isPayment;
  const UConsultAllDoctorSection({super.key, required this.isPayment});

  @override
  State<UConsultAllDoctorSection> createState() =>
      _UConsultAllDoctorSectionState();
}

class _UConsultAllDoctorSectionState extends State<UConsultAllDoctorSection> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return widget.isPayment == false
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: SizedBox(
              height: 151.h,
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 2,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: SizedBox(
                        width: 0.9.sw,
                        child: UCommonDoctorCard(
                          seeAllDoctors: () {},
                          isFavorite: isFavorite,
                          image: AppAssets.doctorpro,
                          name: 'Dr.Pawan',
                          description:
                              'Jorem ipsum dolor, consectetur adipiscing elit. Nunc v libero et velit interdum, ac  mattis.',
                          rating: 4.5,
                          book: () {
                            Navigator.pushNamed(context,
                                AppRoutes.userConfirmedAppointmentScreen);
                          },
                          favorite: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                          bannertitle: expert,
                          isbanner: false,
                          payment: widget.isPayment,
                        ),
                      ),
                    );
                  }),
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 18),
            child: UCommonDoctorCard(
              call: () {
                Navigator.pushNamed(
                    context, AppRoutes.consulationPaymentScreen);
              },
              chat: () {
                Navigator.pushNamed(
                    context, AppRoutes.consulationPaymentScreen);
              },
              videocall: () {
                Navigator.pushNamed(
                    context, AppRoutes.consulationPaymentScreen);
              },
              isbanner: false,
              payment: widget.isPayment,
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
              bannertitle: 'f',
            ),
          );
  }
}
