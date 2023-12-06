import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/auth/view/doctorregistration/widgets/nextbutton.dart';
import 'package:idaawee/features/user/our_speciallist/widgets/timing.dart';
import 'package:idaawee/features/user/our_speciallist/widgets/timing2.dart';
import 'package:idaawee/features/user/our_speciallist/widgets/u_similar_doctor.dart';
import 'package:idaawee/routes/route_manager.dart';

import '../../../../utils/constants/assets_manager.dart';

class BookDoctorPage extends StatelessWidget {
  BookDoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        onPressed: () {
          Navigator.pop(context);
        },
        appBarTitle: 'Select Date & time',
      ),
      body: Container(
        height: 1.sh,
        width: 1.sw,
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
              USimilarDoctor(
                isaddingdoctor: true,
                name: 'Dr. Berlin Elizerd',
                speciality: 'Medicine Specialist',
                image: 'assets/images/img.png',
                rating: 4.5,
                review: '452',
                onPress: () {},
              ),
              Container(
                color: Colors.white,
                height: 100,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 7,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 10, right: 10, bottom: 10, top: 10),
                        child: Container(
                          width: 50,
                          decoration: BoxDecoration(
                              gradient: index != 2
                                  ? null
                                  : const LinearGradient(
                                      colors: [
                                          MyColors.appColor1,
                                          MyColors.appColor,
                                        ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight),
                              border: Border.all(
                                color: MyColors.grey.withOpacity(0.50),
                              ),
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                weekdaysname[index].toString()[0],
                                style: getBoldStyle(
                                    color: index == 2
                                        ? MyColors.whiteColor
                                        : MyColors.grey,
                                    fontSize: 22),
                              ),
                              Text(
                                weekdaysname[index],
                                style: getBoldStyle(
                                    color: index == 2
                                        ? MyColors.whiteColor
                                        : MyColors.grey,
                                    fontSize: 16),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Container(
                  color: Colors.white,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: timingpagehiring(),
                  )),
              NextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.addPaymentScreen);
                  },
                  isbackbuton: false,
                  text: 'Next'),
            ],
          ),
        ),
      ),
    );
  }

  final List weekdaysname = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
}
