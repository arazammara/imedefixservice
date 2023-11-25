import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/user/consulation/view/speciallized_video_consultation_doctors_screen.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';
import '../../../../commons/common_imports/common_libs.dart';

class SpecializedQuickVideoConsultationScreen extends StatefulWidget {
  const SpecializedQuickVideoConsultationScreen({super.key});

  @override
  State<SpecializedQuickVideoConsultationScreen> createState() =>
      _SpecializedQuickVideoConsultationScreenState();
}

class _SpecializedQuickVideoConsultationScreenState
    extends State<SpecializedQuickVideoConsultationScreen> {
  var searchController = TextEditingController();

  bool isFilter = true;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushNamed(context, AppRoutes.userMainMenuScreen);
        return true;
      },
      child: Scaffold(
          body: SingleChildScrollView(
        child: SizedBox(
          height: 812.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonAppBar(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.userMainMenuScreen);
                },
                appBarTitle: bookConsultation,
              ),
              padding20,
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Text(
                    consultDoctorOverVideo,
                    style: getSemiBoldStyle(
                        color: MyColors.textColor, fontSize: MyFonts.size16),
                  )),
              padding10,
              const SpecializedVideoConsultationDoctorsScreen(),
            ],
          ),
        ),
      )),
    );
  }
}
