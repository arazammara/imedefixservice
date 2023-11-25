import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_text/common.text.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/commons/common_widgets/custom_button.dart';
import 'package:idaawee/routes/route_manager.dart';
import 'package:idaawee/utils/constants/assets_manager.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

class AddMedicalRecordScreen extends StatelessWidget {
  const AddMedicalRecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        appBarTitle: medicalRecords,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            padding100,
            Center(
              child: Image.asset(
                AppAssets.addrecord,
                width: 214.h,
                height: 214.w,
              ),
            ),
            padding35,
            Text(
              addamedicalrecord,
              style:
                  getBoldStyle(color: MyColors.black, fontSize: MyFonts.size22),
            ),
            padding16,
            Text(
              adetailedhealthhistoryhelpsadoctordiagnoseyoubtter,
              textAlign: TextAlign.center,
              style: getRegularStyle(
                  color: MyColors.black94, fontSize: MyFonts.size14),
            ),
            padding35,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: CustomButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.addRecordScreen);
                },
                buttonText: addarecord,
                backColor: MyColors.appColor,
                borderRadius: 6.r,
                fontSize: MyFonts.size18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
