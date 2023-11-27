import 'package:idaawee/commons/common_functions/padding.dart';
import 'package:idaawee/commons/common_imports/common_libs.dart';
import 'package:idaawee/commons/common_widgets/common_app_bar.dart';
import 'package:idaawee/features/user/report/widget/u_upload_card.dart';
import 'package:idaawee/utils/constants/font_manager.dart';

import '../../../../commons/common_widgets/CustomTextFields.dart';
import '../../../../utils/constants/assets_manager.dart';

class AddReportScreen extends StatelessWidget {
  const AddReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        onPressed: () {
          Navigator.pop(context);
        },
        appBarTitle: 'Add Reports',
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
              CustomTextField(
                radius: 5.r,
                controller: TextEditingController(),
                hintText: 'Blood Report',
                onChanged: (String) {},
                onFieldSubmitted: (String) {},
                obscure: false,
                label: 'Category',
                subTitle: '',
              ),
              padding10,
              CustomTextField(
                radius: 5.r,
                controller: TextEditingController(),
                hintText: 'Test Name',
                onChanged: (String) {},
                onFieldSubmitted: (String) {},
                obscure: false,
                label: 'Report Title',
                subTitle: '',
              ),
              padding16,
              UUploadCard(onTap: () {}),
              padding16,
              InkWell(
                onTap: () {},
                child: Container(
                    height: 55.h,
                    decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(5.r),
                      border: Border.all(color: MyColors.appColor, width: 1),
                    ),
                    child: Center(
                      child: Text(
                        'Attach More',
                        style: getBoldStyle(
                            color: MyColors.appColor, fontSize: MyFonts.size16),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
