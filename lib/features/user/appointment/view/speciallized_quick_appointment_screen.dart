import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

import '../../../../commons/common_imports/common_libs.dart';
import '../widget/speciallized_doctors_widget.dart';

class SpeciallizedQuickAppointmentScreen extends StatelessWidget {
  const SpeciallizedQuickAppointmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pushNamed(context, AppRoutes.userMainMenuScreen);
        return Future.value(false);
      },
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonAppBar(
              onPressed: () {
                Navigator.pushNamed(context, AppRoutes.userMainMenuScreen);
              },
              appBarTitle: bookAppointment,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  padding10,
                  Text(
                    ourspeciallizeddoctorsarbelow,
                    style: getSemiBoldStyle(
                        color: MyColors.textColor, fontSize: MyFonts.size16),
                  ),
                  padding5,
                  Text(
                    choseaccuratedoctorasperthespeciallization,
                    style: getSemiBoldStyle(
                        color: MyColors.grey, fontSize: MyFonts.size12),
                  ),
                  padding20,
                  const SpecializedDoctorsWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
